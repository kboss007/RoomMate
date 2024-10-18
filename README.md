# RoomMate - Roommate Assignment Application

**Version:** 1.0  
**Developers:** Vedant Chanshetty, Kunal Singh, Viswajith Nambiar  
**Date:** May 14, 2023  

## Table of Contents
1. [Application Overview](#application-overview)
2. [Installation](#installation)
3. [How to Use](#how-to-use)
4. [FAQ / Troubleshooting](#faq--troubleshooting)
5. [License](#license)

---

## Application Overview

**RoomMate** is a tool designed to help boarding schools, colleges, or any organizations efficiently assign roommates based on personal preferences. The app uses a survey-based approach, taking an Excel file with students' preferences and matching individuals with the most common attributes, providing accurate and optimal pairings.

### Key Features:
- Easy-to-use interface for selecting files and assigning roommates
- Supports up to 10 custom preferences for pairing students
- Uses an Excel template for smooth data import and processing
- Quick and efficient roommate pairing based on shared preferences

---

## Installation

### System Requirements
- **MacOS:** RoomMate is only compatible with MacOS (Ventura 13 or higher).
- **Supported Files:** The app works with `.xlsx` files.

### Installation Steps:
1. Download the ZIP file containing the **RoomMate** application and user guide.
2. Extract the ZIP file to your desired directory.
3. No further installation is needed. Simply locate the app on your Desktop and double-click to run it.

> **Note:** If Mac's security system blocks the app due to malware verification, right-click the app in Finder and select **Open** to bypass the security prompt. This step needs to be done only once.

---

## How to Use

### File Creation and Setup:
1. The app only accepts `.xlsx` files with a specific layout containing up to 10 preferences per student.
2. You can modify the preferences based on your needs. Some common preferences include:
   - **Loud/Quiet**
   - **Sleep Early/Sleep Late**
   - **Messy/Clean**
   - **Social/Antisocial**
   - **Gay/Straight**
   - **Responsible/Irresponsible**

3. Use the following [template](https://docs.google.com/spreadsheets/d/1CLoivpy7rsuBZwIEB_wUodtNvSr7n1K7x13ff_pYojs/edit?usp=sharing) for the correct Excel file layout.

### Pairing Roommates:
1. Launch the application.
2. Select the `.xlsx` file containing student names and preferences.
3. Click on the **Assign Roommates** button.
4. The app will display roommate pairings along with the number of shared preferences for each pair.

---

## FAQ / Troubleshooting

**Q: How do I open the application if I get a malicious software warning?**  
A: Right-click the app in Finder and select **Open** to bypass the warning. After this, the app will run normally.

**Q: Can I use less than 10 preferences?**  
A: Yes, the application will work even if fewer than 10 preferences are used, but it will not support more than 10.

**Q: What happens if there's an odd number of students?**  
A: One student will be placed without a roommate, simulating placement in a solo dorm.

**Q: Can I add extra preferences to the Excel template?**  
A: No, the app only supports a maximum of 10 preferences. Adding more will cause errors.

---

## License

This project is licensed under the MIT License.
