import tkinter as tk
from tkinter import filedialog
import pandas as pd
import os

#get file from desktop
def get_file():
    #only accepts Excel files
    file_path = filedialog.askopenfilename(filetypes=[("Excel files", "*.xlsx")])
    if file_path:
        fileName = os.path.split(file_path)
        selectFileButton.config(text="Select File")
        FileChosen.config(text = f"File Chosen: {fileName[1]}")
        df = pd.read_excel(file_path)
        global names
        global preferences1
        global preferences2
        global preferences3
        global preferences4
        global preferences5
        global preferences6
        global preferences7
        global preferences8
        global preferences9
        global preferences10
        names = df["Names"].tolist()
        #set all columns in excel to list
        preferences1 = df["Preference 1"].tolist()
        preferences2 = df["Preference 2"].tolist()
        preferences3 = df["Preference 3"].tolist()
        preferences4 = df["Preference 4"].tolist()
        preferences5 = df["Preference 5"].tolist()
        preferences6 = df["Preference 6"].tolist()
        preferences7 = df["Preference 7"].tolist()
        preferences8 = df["Preference 8"].tolist()
        preferences9 = df["Preference 9"].tolist()
        preferences10 = df["Preference 10"].tolist()

#get "index" of key
def get_nth_key(dictionary, n):
    if n < 0:
        n += len(dictionary)
    for i, key in enumerate(dictionary.keys()):
        if i == n:
            return key
    raise IndexError("dictionary index out of range") 

# get "index" of key using the value
def get_key_by_value(dictionary, value):
    for key, val in dictionary.items():
        if val == value:
            return key
    return None  # value not found in dictionary

def assign_roommates():
    roommates_and_preferences = {}
    #create list of all preferences. list becomes value in dictionary with student name as key
    for i in range(len(names)):
        current_name = []
        current_name.append(preferences1[i])
        current_name.append(preferences2[i])
        current_name.append(preferences3[i])
        current_name.append(preferences4[i])
        current_name.append(preferences5[i])
        current_name.append(preferences6[i])
        current_name.append(preferences7[i])
        current_name.append(preferences8[i])
        current_name.append(preferences9[i])
        current_name.append(preferences10[i])

        roommates_and_preferences[names[i]] = current_name
    values = [roommates_and_preferences[key] for key in roommates_and_preferences]

    duplicated_lists = list(values)

    pairs = []
    elements = []

    # finds the most common list of preferences between students
    while len(duplicated_lists) > 1:
        most_common = None
        most_common_count = 0
        most_common_index = None

        for i in range(len(duplicated_lists)):
            for j in range(i+1, len(duplicated_lists)):
                count = len(set(duplicated_lists[i]).intersection((duplicated_lists[j])))
                if count > most_common_count:
                    most_common = (i, j)
                    most_common_count = count

        most_common_index = [values.index(duplicated_lists[i]) for i in most_common]
        pairs.append(most_common_index)
        elements.append(most_common_count)

        # take students out once they have been set as roommates
        duplicated_lists.pop(most_common[1])
        duplicated_lists.pop(most_common[0])
    count = 0

    # display results of paired roommates and anyone in a solo/without roommate
    result = ""
    if pairs:
        result += "Here are the assigned roommates:\n"
        count = 0
        for pair in pairs:
            result += f"{get_nth_key(roommates_and_preferences, pair[0])} and {get_nth_key(roommates_and_preferences, pair[1])} with {elements[count]} preferences in common\n"
            count += 1
    result += f"\n"
    if duplicated_lists:
        result += f"{get_key_by_value(roommates_and_preferences, duplicated_lists[0])} does not have a roommate"
    
    roommatesTable.config(text=result)


screen = tk.Tk()
screen.title("Roommate Assignment App")
selectFileButton = tk.Button(screen, text = 'Select File', state = 'normal', width = 25, command = lambda: get_file())
OnlyExcelButton = tk.Label(screen,text = 'This program only accepts Excel files.')
assignRoommatesButton = tk.Button(screen,text = 'Assign Roommates', state = 'normal', width = 25, command = lambda: assign_roommates())
roommatesTable = tk.Label(screen)
FileChosen = tk.Label(screen)

OnlyExcelButton.pack(padx=10,pady=10)
selectFileButton.pack(padx=20,pady=20)
FileChosen.pack(padx=30,pady=30)
assignRoommatesButton.pack(padx=50, pady=50)
roommatesTable.pack(padx=70, pady=70)

screen.mainloop()