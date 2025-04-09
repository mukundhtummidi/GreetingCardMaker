 Greeting Card Maker (Terminal-Based - Haskell)
Welcome to the Greeting Card Maker, a terminal-based application written in Haskell that allows users to create, view, and manage greeting cards interactively. Whether it's for a birthday, anniversary, or any special occasion, this app helps you store personalized cards right from the command line!

📦 Features
✏️ Interactive greeting card creation

👀 View all saved cards with clean formatting

🖼️ Neatly bordered card layout in terminal

🧠 Stores multiple cards in a session

💬 Simple and user-friendly CLI interface

🛠 Installation & Setup
🔧 Prerequisites
Make sure you have the Haskell Tool Stack installed:

bash
Copy
Edit
curl -sSL https://get.haskellstack.org/ | sh
🚀 Running the Application
Clone the Repository (if applicable):

bash
Copy
Edit
git clone https://github.com/your-username/greeting-card-maker.git
cd greeting-card-maker
Create the Haskell File (if running locally):

Save the code as GreetingCardMaker.hs

Build & Run with Stack:

bash
Copy
Edit
stack new greeting-card-app simple
cd greeting-card-app
Replace the app/Main.hs file with GreetingCardMaker.hs content.

Then run:

bash
Copy
Edit
stack build
stack exec greeting-card-app-exe
Or if using GHCi:

bash
Copy
Edit
ghci GreetingCardMaker.hs
main
🖥️ Usage
Once the application starts, you will see a friendly welcome screen with three main options:

Create a new greeting card

View created greeting cards

Exit

Just follow the on-screen prompts to enter details like occasion, recipient, message, sender, date, and time.

🧾 Example Output
vbnet
Copy
Edit
------------------------------------------
                                          
    Welcome to the Greeting Card Maker!   
                                          
------------------------------------------
Let's create your greeting cards interactively.

What would you like to do?
1. Create a new greeting card
2. View created greeting cards
3. Exit
Enter your choice (1/2/3): 
📁 Project Structure
bash
Copy
Edit
GreetingCardMaker.hs   # Main source file containing all logic
README.md              # Project readme and documentation
✅ To-Do / Improvements (Optional Ideas)
Export greeting cards to text or PDF

Save cards persistently in a file or database

Add colors to terminal output for visual flair

Search/filter cards by recipient or occasion

📃 License
This project is open-source and free to use under the MIT License.
