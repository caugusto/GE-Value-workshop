<div style="font-size: 1.2em;">

# Hands-on Lab: Unlocking Day 1 Value in Gemini Enterprise

Author: Carlos Augusto
Last Modified: 3/17/2026


## Welcome & Prerequisites

Welcome to the Gemini Enterprise hands-on lab! 

In this session, you will explore the core day-one capabilities of the platform. Before we begin, please ensure you are logged into your provided Google account and have navigated to the Gemini Enterprise landing page. Your environment has already been provisioned with the necessary access to complete these exercises.

<br>

![image.png](attachment:image.png)

<br>


---

## Task 1: Navigating the Interface & Basic Assistant Features

Let's start by getting familiar with the Gemini Enterprise interface and some of its foundational tools.

1. **Explore the Landing Page and Prompt Chips:** On the main screen, notice the **Prompt chips** located directly below the Omnibar. Prompt chips are pre-written, clickable suggestions designed to help you discover new use cases and get started quickly without having to type out a full command from scratch. They provide instant examples of how to format effective queries for tasks like summarizing documents, brainstorming, or analyzing data. Click **"Go off-script"** and then choose "Plan a fun virtual happy hour for my team.". Submit the first query by clicking the paper airplane icon. 

![image-2.png](attachment:image-2.png)


2. **Conversation History:** Look at the left navigation panel. Your conversations are automatically stored under the **Chats** tab for 60 days. <br>
You can "Star" your most useful conversations to keep them permanently in the **Starred** tab. To to that, **click** the Star icon on the top right of any conversation.
   <br>

   ![image-3.png](attachment:image-3.png)

   <br>

   You can also use the search icon here to find specific past conversations. On the left navigation, **click** the Search icon and type `virtual`. Notice it finds the conversations with this term.
   
   <br>

   ![image-4.png](attachment:image-4.png)

   <br>

3. **Translation:** Click "New Chat" and, using the Omnibar, type a short phrase in English and ask Gemini Enterprise to translate it. For example: `Translate 'Welcome to the future of work' into Spanish, French, and Japanese.`

   <br>
   
   ![image-5.png](attachment:image-5.png)

   <br>

4. **Code Generation:** Click "New Chat" and, using the Omnibar, ask the assistant to generate a simple script. <br>
   Type: `Write a Python script to print the first 10 Fibonacci numbers.` <br>
   Notice that when the response generates, you can easily click **Show code** to view the formatting or click **Copy code** to export it to your clipboard.

   <br>
   
   ![image-6.png](attachment:image-6.png)

   <br>

---

## Task 2: Web Search, File Analysis & Data Handling

Gemini Enterprise can analyze public web data, process files, and format data for external use.

1. **Enable Web Search:** On the landing page, locate the **Sources** configuration and ensure **Web Search** is enabled.
   
   *[Screenshot: The Sources configuration menu showing Web Search toggled on]*

2. **Search the Web:** In the Omnibar, type: `"Who are the top competitors of [Insert Company Name]?"`. 

3. **Check the Sources:** When the answer generates, notice that the response includes hyperlinked reference citations. Click on these citations to view the exact public websites used as answer sources.
   
   *[Screenshot: A generated response showing the hyperlinked citations and the sources list]*

4. **Follow-Up Questions:** Highlight a specific sentence or section of the generated text. A tooltip will appear allowing you to ask a specific follow-up question on that exact topic.
   
   *[Screenshot: Text highlighted with the follow-up question tooltip visible]*

5. **Drag and Drop Analysis:** You can analyze images, videos, or code directly. Find an image on your computer (or copy an image from the web) and drag and drop it directly into the Omnibar. Ask: `"What are the main elements of this image?"`
   
   *[Screenshot: An image attached in the Omnibar with the prompt text]*

6. **Download Tabular Data:** Ask Gemini Enterprise to create a table. Type: `"Create a table comparing the populations of the 5 largest cities in the US."` Once the table is generated, locate the button on the top right of the table to **Copy** or **Download as CSV** for further analysis in Google Sheets or Excel.
   
   *[Screenshot: The generated table with the 'Copy' and 'Download as CSV' buttons highlighted]*

---

## Task 3: Configuring Personalization

Personalization (pContext) allows Gemini Enterprise to tailor its responses based on a ~30-day window of your activity, Google Workspace data (1P apps like Gmail, Calendar, Drive), and connected third-party (3P) apps.

1. Navigate to **Settings** (gear icon) and click on **Personalization**.
   
   *[Screenshot: The Settings menu with the Personalization option highlighted]*

2. **Edit your Profile:** In the Profile section, enter your **Preferred name**, your **Role or job title**, and your **Industry**. This gives the assistant explicit context about who you are.
   
   *[Screenshot: The Profile fields filled out with example data]*

3. **Enable Memory & History:** Ensure the toggles for **Conversation history** and **Reference saved memories** are turned on so Gemini Enterprise can learn from your past interactions.
   
   *[Screenshot: The toggles for Conversation history and Reference saved memories in the 'on' position]*

4. **Test Personalization:** Return to the chat and try prompts that rely on this personalized context. Try asking:
    * `"What have my coworkers and I discussed recently?"`
    * `"Help me prepare for my 1:1 with my manager."`
    * `"What are some notable upcoming industry events in the next few months based on my role?"`
   
   *[Screenshot: A personalized response generated based on the user's role or calendar data]*

---

## Task 4: Searching Internal Company Data

Gemini Enterprise allows you to securely query your connected enterprise data and extract insights from text and visuals.

1. Click the **New chat** button on the top left corner to start a new chat.
   
   *[Screenshot: The 'New chat' button on the top left]*

2. In the search bar, click the **Tools** button, and select **Search Company data**.
   
   *[Screenshot: The Tools dropdown menu with 'Search Company data' selected]*

3. Enter the following prompt: `"What products were in the March newsletter?"`

4. Review the answer, which is synthesized directly from your internal company files. 
   
   *[Screenshot: The response showing information pulled from internal files, ideally with internal citations]*

5. Click the **New chat** button on the top left corner to start a new chat.

6. In the search bar, click the **Tools** button, and select **Search Company data**.

7. Enter the following prompt: `"Summarize the customer sentiment pie chart"`

8. Notice how Gemini Enterprise can interpret, analyze, and summarize visual data stored within your organization's documents.
   
   *[Screenshot: The response summarizing the visual data (pie chart) from the internal document]*

---

## Task 5: Using @ Mentions and Calling Agents Directly

You can seamlessly bring external context, files, people, or specific AI agents directly into your current chat flow using the Omnibar. 

1. In the Omnibar, type `@` to open the context menu. You can use this to call specific **Files**, **People** (which will display their people card and org chart), or **Agents**.
   
   *[Screenshot: The Omnibar showing the @ mention dropdown menu populated with files, people, and agents]*

2. Let's test calling an agent directly. Type `@Deep Research` and either hit the spacebar or select it from the dropdown menu that appears.

3. Once the Deep Research agent is tagged in the Omnibar, append your research topic. Type: `@Deep Research Research the impact of AI on customer service`.
   
   *[Screenshot: The Omnibar with the @Deep Research tag activated and the prompt text entered]*

4. Press **Enter**. Notice how this bypasses the need to navigate to the separate Agents tab. The Deep Research agent will immediately take over the prompt and begin its workflow.

---

## Task 6: Brainstorming with Idea Generation

This agent continuously generates ideas on a topic, runs a multi-angle evaluation, and ranks them tournament-style.

1. Under the **Agent** tab, select the **Idea Generation** agent.
   
   *[Screenshot: The left navigation panel showing the Agent tab expanded and Idea Generation selected]*

2. Provide a topic to ideate around, such as: `"Brainstorm a gamified employee onboarding process"`.

3. Review the tournament plan. Make any necessary edits, then click **Start Session**.
   
   *[Screenshot: The generated tournament plan with the 'Start Session' button]*

4. Click into the newly-created tournament details. *(Note: The full tournament evaluation process will take several hours to complete. Once your session is submitted and running, you can move on to the next task and come back afterwards to check the results.)*

5. When you return later, review the details of each idea and observe how the final tournament ranking evolved.
   
   *[Screenshot: The Idea Generation tournament dashboard showing ranked ideas]*

---

## Task 7: Conducting Deep Research

The Deep Research agent provides in-depth, multi-page reports grounded in thorough web research.

1. Under the **Agent** tab on the left navigation menu, select the **Deep Research** agent.
   
   *[Screenshot: The left navigation panel with the Agent tab expanded and 'Deep Research' selected]*

2. Paste the following prompt: `"Summarize the primary marketing channels and messaging themes used by [Competitor X] and [Competitor Y] in the '[New Market Segment, Mobile phones]'."`

3. Review the generated research plan. You can ask the assistant to make edits, or simply click **Start Research**.
   
   *[Screenshot: The generated multi-step research plan with the 'Start Research' button visible]*

4. Wait a few minutes as Gemini Enterprise searches hundreds of sources, generates new questions, and refines its plan along the way.

5. Once complete, read through the multi-page report, review the citations, and click the play button to listen to the generated audio summary of the report.
   
   *[Screenshot: The completed Deep Research report showing citations and the audio playback widget]*

---

## Task 8: Generating Media (Images and Video)

Gemini Enterprise allows you to generate images and videos using Google’s state-of-the-art models.

1. In the Omnibar, select the **Image generator tool**.
   
   *[Screenshot: The Omnibar with the Image generator tool icon selected]*

2. Paste the following prompt: `"I have a new product which can search across 100+ data sources and help me analyze blended data and create agents on this blended data. Generate an image for its website."`

3. Once the response is generated, click the option to copy or download the image.
   
   *[Screenshot: The generated image with the download/copy options highlighted]*

4. Next, use the Omnibar or select the **Generate a video tool** to create a short video.
   
   *[Screenshot: The Omnibar with the Video generator tool icon selected]*

5. Paste the following prompt to test the model's cinematic capabilities: `"A cinematic time-lapse of a bustling futuristic server room with glowing blue lights, sleek data racks, and a smooth camera pan."`

6. Once the response is generated, notice that the video is up to 8 seconds long and includes options to be downloaded for offline use.
   
   *[Screenshot: The generated video interface with playback and download options]*

---

## Task 9: Unlocking Insights with NotebookLM

Embedded directly within Gemini Enterprise, NotebookLM provides compliant answers, summaries, and audio discussions from your custom, curated sets of content.

1. Expand the left navigation menu and click on the **Agents** tab.

2. Select **NotebookLM**.
   
   *[Screenshot: The left navigation panel showing NotebookLM selected under the Agents tab]*

3. Click **Create a new Notebook**.
   
   *[Screenshot: The NotebookLM welcome screen with the 'Create a new Notebook' button]*

4. Import your content. For this exercise, upload two sample documents (e.g., a sample RFP and a document outlining your company's capabilities).
   
   *[Screenshot: The source upload/import screen showing the two sample documents added]*

5. In the chat interface, type: `"Summarize the key requirements, evaluation criteria, and deadlines outlined in the RFP"`.

6. When the answer is returned, click on a citation number within the text to view the specific source content for that point.
   
   *[Screenshot: The generated summary with a citation clicked, revealing the specific source text in the document viewer]*

7. Locate the **Audio Overview** feature in the NotebookLM interface and click **Generate** to create a dynamic, podcast-style audio discussion based entirely on the documents you uploaded.
   
   *[Screenshot: The NotebookLM interface highlighting the 'Audio Overview' generation button and audio player]*

---

## Task 10: Build an Agent from a Prompt with Agent Designer

With Agent Designer enabled, you can rapidly build custom agents starting with just a simple text prompt.

1. In the left-hand navigation menu, click **Agents**.

2. Click **+ New agent**.
   
   *[Screenshot: The Agents panel highlighting the '+ New agent' button]*

3. At the bottom of the Agent Designer page, you'll see a prompt input. Enter: 
   `"Use your web search capabilities to prepare a daily briefing of news from the past 48 hours, product updates, and current or upcoming sales on the topics provided. The brief should be presented in a bulleted list with key phrases bolded."`

4. Press **Enter** to submit the prompt. You will see a preview panel featuring a draft of your agent. You can test the agent in this panel and use the chat panel on the left to suggest edits.

5. At the top of the agent's preview card, explore the options for **Flow**, **Schedule**, and **Preview**. Click **Flow** to see the Builder view of the agent that was automatically created for you.
   
   *[Screenshot: The Agent preview card with the Flow, Schedule, and Preview tabs visible]*

6. Click **Schedule** at the top of the agent draft panel to automate your daily briefing.

7. Click **+ Add schedule**. Keep the frequency set to **Daily** with the default time and timezone.

8. For the **triggering prompt**, enter:

       Prepare my daily briefing on the following topics:
       - Lawn watering automation
       - Solar panel technology
       - Landscape lighting
       - Sales on large planters
   
   *[Screenshot: The Add schedule configuration menu with the frequency and prompt filled out]*

9. Click **Add schedule** at the bottom to confirm.

10. Click the **play icon** to run the agent with the scheduled prompt immediately. You'll see a result in the agent draft's Preview tab.

11. To save your agent for future use, click **Create** in the upper right. *(Note: This scheduled agent will now run daily based on the schedule you set.)*

---

## Task 11: Build an Agent with the Agent Designer Builder

Take more control of the agent-building process by using the manual Builder interface and adding multi-step subagents.

1. In the left-hand menu, under the **Agents** header, click **+ New agent**.

2. To bypass the prompt input and build manually, click the **Proceed to Builder** link.
   
   *[Screenshot: The 'Proceed to Builder' link highlighted on the new agent creation screen]*

3. Click the starting agent node named **My Agent**.

4. Update the agent's **Name** to `Sales Call Followup Agent`.

5. Next to the agent's Name field, click on the upload icon labeled **Icon**. Upload a sample image from your computer to act as the agent's avatar.
   
   *[Screenshot: The Builder node settings showing the updated Name and Icon upload button]*

6. For the **Description**, enter:
   `"Agent to help with next steps after sales calls."`

7. For **Instructions**, enter:
   `"When presented with notes from a sales call, write a 1-sentence paragraph thanking the customer for the opportunity to bid on their project and write a paragraph to summarize of the call. Then transfer to the Followup Questions subagent."`

8. Click back on the grid to dismiss the detail popup of this agent node. Then, mouse-over the agent node and click on the **plus icon** to add a subagent.
   
   *[Screenshot: The Builder grid showing the main node and the plus icon to add a connected subagent]*

9. Update the subagent's **Name** to `Followup Questions`.

10. For the **Description**, enter:
    `"Generate additional discovery questions based on the customer's scope."`

11. For **Instructions**, enter:
    `"Develop a list of discovery questions to define the client's needs requirements for materials, tools, and additional expenses (walkway stones, fountains, landscape lighting, etc. in greater detail)."`

12. In the upper right corner, click **Create**.

13. Click **Chat with Agent**. In the input field, test your new agent by entering the following sales call notes:

        The Wilson Hotel Sales Call Notes:
        - customer needs lawn maintenance
        - 3 hectares of land
        - needs a pond dug and 3 trees planted
        - wants lawn maintained twice per month
    
    *[Screenshot: The chat panel displaying the agent's response with a summary and follow-up questions]*

14. In the left-hand navigation, click the **Agents** section header. You will now see your *Sales Call Followup Agent* listed under *Your agents*.

15. Click the **three dots** on the agent's card and select the **pin icon**. This will make the agent appear directly in the left-hand navigation pane for quick access.
    
    *[Screenshot: The agent card with the three-dot menu open and the pin icon highlighted]*

</div>