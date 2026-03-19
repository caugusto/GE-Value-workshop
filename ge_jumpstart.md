
<div id='top'></div>
<div class="toc-container">
<h3>Table of Contents</h3>
<ul>
  <li><a href="#section-1">Welcome & Prerequisites</a></li>
  <li><a href="#section-2">1: Navigating the Interface & Basic Assistant Features</a></li>
  <li><a href="#section-3">2: Web Search, File Analysis & Data Handling</a></li>
  <li><a href="#section-4">3: Configuring Personalization and Appearance</a></li>
  <li><a href="#section-5">4: Searching Internal Company Data</a></li>
  <li><a href="#section-6">5: Using @ Mentions and Calling Agents Directly</a></li>
  <li><a href="#section-7">6: Brainstorming with Idea Generation</a></li>
  <li><a href="#section-8">7: Conducting Deep Research</a></li>
  <li><a href="#section-9">8: Generating Media (Images and Video)</a></li>
  <li><a href="#section-10">9: Unlocking Insights with NotebookLM</a></li>
  <li><a href="#section-11">10: Build an Agent from a Prompt with Agent Designer</a></li>
  <li><a href="#section-12">11: Build an Agent with the Agent Designer Builder</a></li>
  <li><a href="#section-13">12: Review Submitted Tasks</a></li>
</ul>
</div>




<div style="font-size: 1.2em;">

# Hands-on Lab: Unlocking Day 1 Value in Gemini Enterprise

Last Modified: 3/19/2026


<div id='section-1'></div>

# Welcome & Prerequisites

Welcome to the Gemini Enterprise hands-on lab! 

Gemini Enterprise is Google's premier AI assistant designed specifically for businesses. It provides secure, enterprise-grade access to Google's most capable AI models, seamlessly integrated with your organization's data ecosystem. Built from the ground up to prioritize data privacy and security, it ensures your sensitive corporate information remains protected.

By leveraging Gemini Enterprise, organizations can drastically accelerate everyday workflows, synthesize complex information rapidly, and foster deeper creative problem-solving. From drafting emails and generating extensive research reports to brainstorming strategies dynamically, Gemini acts as an intelligent collaborator that elevates team productivity across all departments.

In this session, you will explore the core day-one capabilities of the platform. Before we begin, please ensure you are logged into your provided Google account and have navigated to the Gemini Enterprise landing page. Your environment has already been provisioned with the necessary access to complete these exercises.

<br>

<img src="jumpstart_images/image_bordered.png" width="80%" />

<br><br>

<div class="nav-link"><a href="#top">↑ Back to Top</a></div>

---

<div id='section-2'></div>

# Task 1: Navigating the Interface & Basic Assistant Features

Let's start by getting familiar with the Gemini Enterprise interface and some of its foundational tools.

1. **Introduce the Chat Assistant:**
   * In your app, you can chat about search results and uploaded content with the assistant. The assistant can provide summaries and answer questions through natural language conversations, and you can export the assistant's answers in common formats to share with others.
   * To engage in a conversation with the assistant and view supporting sources:
     * Type your question into the chat box. The assistant automatically provides a summary based on your search results.
     * Ask follow-up questions to refine the answers. Save local images as needed, just like the others.

   <br>
   
   <img src="jumpstart_images/assistant-chat_bordered.png" width="80%" />
   
   <br>
   
   <img src="jumpstart_images/assistant-sources_bordered.png" width="80%" />

<br><br>

2. **Explore the Landing Page and Prompt Chips:**
   * On the main screen, notice the **Prompt chips** located directly below the Omnibar.
     * *Prompt chips are pre-written, clickable suggestions designed to help you discover new use cases and get started quickly without having to type out a full command from scratch.*
     * *They provide instant examples of how to format effective queries for tasks like summarizing documents, brainstorming, or analyzing data.*
   * Click **"Go off-script"**.
   * Choose **"Plan a fun virtual happy hour for my team."**.
   * Submit the first query by clicking the **paper airplane icon**. 

<img src="jumpstart_images/image-2_bordered.png" width="80%" />

<br><br>

3. **Conversation History:**
   * Look at the left navigation panel.
   * Your conversations are automatically stored under the **Chats** tab for 60 days. <br>
   * You can "Star" your most useful conversations to keep them permanently in the **Starred** tab:
     * **Click** the Star icon on the top right of any conversation.
   <br>

   <img src="jumpstart_images/image-3_bordered.png" width="80%" />

<br><br>

* You can also use the search icon here to find specific past conversations:
     * **Click** the Search icon on the left navigation.
     * Type `virtual`.
     * Notice it finds the conversations with this term.
   
   <br>

   <img src="jumpstart_images/image-4_bordered.png" width="80%" />

<br><br>

4. **Share a conversation:**
   * To share your current conversation, click the **share** icon.
   * To share a previous conversation:
     * In the sidebar under **Chats**, hover over the chat you want to share.
     * Click the **three dots** icon.
     * Click **Share**, then **Create link**. A link to the conversation is automatically copied to your clipboard.
   
   <br>
   
   <img src="jumpstart_images/share-conversation_bordered.png" width="80%" />

<br><br>

5. **View and manage your shared conversations:**
   * Navigate to your Gemini Enterprise app.
   * Click the **settings** (gear) icon in the bottom left.
   * Click **Shared chats**.
   * Here you can view details or delete any previously shared conversations.
   
   <br>
   
   <img src="jumpstart_images/shared-conversations_bordered.png" width="80%" />

<br><br>

6. **Translation:** Click "New Chat" and, using the Omnibar, type a short phrase in English and ask Gemini Enterprise to translate it. For example: `Translate 'Welcome to the future of work' into Spanish, French, and Japanese.`

   <br>
   
   <img src="jumpstart_images/image-5_bordered.png" width="80%" />

<br><br>

7. **Code Generation:**
   * Click **"New Chat"**.
   * Using the Omnibar, ask the assistant to generate a simple script. <br>
   * Type: `Write a Python script to print the first 10 Fibonacci numbers.` <br>
   * Notice that when the response generates, you can easily:
     * Click **Show code** to view the formatting.
     * Click **Copy code** to export it to your clipboard.

   <br>
   
   <img src="jumpstart_images/image-6_bordered.png" width="80%" />

<br><br>

<div class="nav-link"><a href="#top">↑ Back to Top</a></div>

---

<div id='section-3'></div>

# Task 2: Web Search, File Analysis & Data Handling

Gemini Enterprise can analyze public web data, process files, and format data for external use.

1. **Enable Google Search:** On the omnibar, locate the **Tools** icon and ensure **Google Search** is enabled.
   
2. **Search the Web:** In the Omnibar, type: `Who are the top competitors of [Insert Company Name]?`. 

   <br>

   <img src="jumpstart_images/image-7_bordered.png" width="80%" />

<br><br>

3. **Check the Sources:** When the answer generates, notice that the response includes hyperlinked reference citations. Click on these citations to view the exact public websites used as answer sources.
   
   <br>

   <img src="jumpstart_images/image-8_bordered.png" width="80%" />

<br><br>

4. **Follow-Up Questions:**
   * Highlight a specific sentence or section of the generated text.
     * *A tooltip will appear allowing you to ask a specific follow-up question on that exact topic.*
   * **Click** on the icon 99.
   * **Type** `tell me more about this`.
   * **Submit** the query. 

   <br>

   <img src="jumpstart_images/image-9_bordered.png" width="80%" />

<br><br>

5. **Analyze Concepts and Research Methodologies:**
   * You can use Gemini Enterprise to obtain general information about research methodologies, scientific concepts, or public databases such as PubMed through a chat interface.
   * Start a **New Chat**.
   * In the chat box, enter a prompt such as the following:
   * **Type**: `My objective is to understand [specific topic, e.g., the methodology behind clinical trials for cancer research]. Please use all available external data sources, including [list of data sources, e.g., PubMed, Google Scholar, National Library of Medicine], to summarize the key statistical methods used to analyze data in each phase.`
   * **Submit** the query.

   <br><br>

6. **Brainstorm New Content:**
   * You can use Gemini Enterprise to get started with writing a new blog post, email, or social media update.
   * Start a **New Chat**.
   * In the chat box, enter a prompt such as the following:
   * **Type**: `Give me a [number]-point outline for a [content type, e.g., blog post, email newsletter] about [topic]. The target audience is [target audience], so please ensure that the outline addresses their main interests and pain points.`
   * **Submit** the query.

   <br><br>

7. **File Analysis:**
   * You can analyze images, videos, or code directly. <br>
   * Download the [Microservices Architecture PDF](https://github.com/caugusto/GE-Value-workshop/raw/main/data/ge_sample_data_for_workshop/microservices.pdf) and save it locally. <br>
   * **Upload the file**:
     * Drag and drop it directly into the Omnibar, OR
     * Click the **+ icon** to upload. <br>
   * **Type**: `What is this about and tell me the main elements of this image?`
   
   <br>

   <img src="jumpstart_images/image-10_bordered.png" width="80%" />

   <br>
   *For more information, see [Supported File Formats and Sizes](https://docs.cloud.google.com/gemini/enterprise/docs/assistant-chat#file_formats_and_size_limitations).*

<br><br>

8. **Download Tabular Data:**
   * Start a new chat.
   * **Type**: `Create a table comparing the 5 largest countries in the world.` <br>
   * Once the table is generated, look at the bottom right of the table:
     * Click **Copy**, OR
     * Click **Download Table** for further analysis.
   
   <br>

   <img src="jumpstart_images/image-11_bordered.png" width="80%" />

<br><br>

9. **Graph/Chart Generation:**
   * You can generate a graph/chart from data.<br>
   * Download the [Sales Performance txt file](https://github.com/caugusto/GE-Value-workshop/raw/main/data/ge_sample_data_for_workshop/sales_performance.txt) and save it locally using **.csv** extension. <br>
   * **Start a new chat.** <br>
   * **Upload the file**:
     * Drag and drop it directly into the Omnibar, OR
     * Click the **+ icon** to upload. <br>
   * **Type**: `create a pie chart of top 5 revenue states and combine the rest on others.`
   
   <br>

   <img src="jumpstart_images/image-12_bordered.png" width="80%" />

<br><br>

<div class="nav-link"><a href="#top">↑ Back to Top</a></div>

---

<div id='section-4'></div>

# Task 3: Configuring Personalization and Appearance

**Appearance**: You can customize the appearance of Gemini Enterprise in a variety of ways, including adjusting the theme (System, Light, Dark) and chat density (Comfortable, Compact).

**Personalization**: As you use Gemini Enterprise, it builds a personal memory by understanding your individual needs and work patterns, leading to more relevant and context-aware assistance. You can explicitly define your role and industry, manage connected sources, and save specific memories. Personalization allows Gemini Enterprise to tailor its responses based on a ~30-day window of your activity, Google Workspace data (1P apps like Gmail, Calendar, Drive), and connected third-party (3P) apps.

1. **Navigate to Settings:**
   * Click **Settings & help** (gear icon at bottom left).
   * Click on **Personalization**.
   <br>
   
   <img src="jumpstart_images/image-13_bordered.png" width="80%" />

<br><br>

2. **Edit your Profile:**
   * In the Profile section, enter the following details to give the assistant explicit context about you:
     * **Preferred name**
     * **Role or job title**
     * **Industry**

   <br>

   <img src="jumpstart_images/image-14_bordered.png" width="80%" />

<br><br>

3. **Enable Memory & History:**
   * Ensure the following toggles are turned on to help the assistant learn from past interactions:
     * **Conversation history**
     * **Reference saved memories**

   <br>

   <img src="jumpstart_images/image-15_bordered.png" width="80%" />

<br><br>

4. **Appearance:**
   * Still under Settings, click on **Appearance**.
   * Make sure **all** home page elements are checked.
   * *Optional: Pick your theme (Light or Dark).*

   <br>

   <img src="jumpstart_images/image-16_bordered.png" width="80%" />

<br><br>

<div class="nav-link"><a href="#top">↑ Back to Top</a></div>

---

<div id='section-5'></div>

# Task 4: Searching Internal Company Data

Gemini Enterprise allows you to securely query your connected enterprise data and extract insights from text and visuals. It can connect to Google 1st party solutions like Google Cloud Storage, BigQuery, Google Drive, and Google Calendar, but also 3rd party systems via numerous connectors available to Outlook, SharePoint, Jira, ServiceNow and many others. For more details on connectors, see https://docs.cloud.google.com/gemini/enterprise/docs/connectors/introduction-to-connectors-and-data-stores

1. Click the **New chat** button on the top left corner to start a new chat.
   
2. In the search bar, click the **Tools** button, and select **Search Company data**.
   
3. Enter the following prompt: `Who is the CEO of Cymbal Bank?`

   <br>

   <img src="jumpstart_images/image-17_bordered.png" width="80%" />

<br><br>

4. Review the answer, which is synthesized directly from your internal company files. 
   
   <br>

   <img src="jumpstart_images/image-18_bordered.png" width="80%" />

<br><br>

5. Click the **New chat** button on the top left corner to start a new chat.

6. In the search bar, click the **Tools** button, and select **Search Company data**.

7. Enter the following prompt: `"Summarize the customer sentiment pie chart"`

8. Notice how Gemini Enterprise can interpret, analyze, and summarize visual data stored within your organization's documents.
   
   <br>

   <img src="jumpstart_images/image-19_bordered.png" width="80%" />

<br><br>

<div class="nav-link"><a href="#top">↑ Back to Top</a></div>

---

<div id='section-6'></div>

# Task 5: Using @ Mentions and Calling Agents Directly

You can seamlessly bring external context, files, people, or specific AI agents directly into your current chat flow using the Omnibar. 

1. **Open the Context Menu:**
   * In the Omnibar, type **`@`**.
   * *Note: You can use this to call specific **Files**, **People**, or **Agents**.*
   
2. **Call an Agent:**
   * Type **`@Deep Research`**.
   * Either hit the **spacebar** OR select it from the dropdown menu.

3. Once the Deep Research agent is tagged in the Omnibar, append your research topic. Type: `The impact of AI on customer service`.
   
   <br>

   <img src="jumpstart_images/image-20_bordered.png" width="80%" />

<br><br>

4. **Submit the Question:**
   * Click submit.
   * *Notice how the Deep Research agent takes over directly, bypassing the separate Agents tab.* 

<div class="nav-link"><a href="#top">↑ Back to Top</a></div>

---

<div id='section-7'></div>

# Task 6: Brainstorming with Idea Generation

The **Idea Generation** agent is designed to help you explore creative possibilities, brainstorm novel concepts or campaign angles, and generate comprehensive lists or tournaments of ideas. It acts as a creative partner to kickstart your thought process on any topic.

This agent continuously generates ideas on a topic, runs a multi-angle evaluation, and ranks them tournament-style.

1. **Select the Agent:**
   * Go to the **Agent** tab (left navigation bar).
   * Select the **Idea Generation** agent. <br>
   * *Note: Idea Generation is currently in preview.* <br>
   

2. Provide a topic to ideate around, such as: `Brainstorm a gamified employee onboarding process`.

3. **Start the Session:**
   * Review the tournament plan.
   * Make edits by submitting feedback to the agent.
   * When complete, click **Start Session**.
   
   <br>

   <img src="jumpstart_images/image-21_bordered.png" width="80%" />

<br><br>

4. Click into the newly-created tournament details. *(Note: The full tournament evaluation process will take several hours to complete. Once your session is submitted and running, you can move on to the next task and come back afterwards to check the results.)*


<div class="nav-link"><a href="#top">↑ Back to Top</a></div>

---

<div id='section-8'></div>

# Task 7: Conducting Deep Research

The **Deep Research** agent performs extensive, multi-step web research to synthesize detailed reports. It gathers cited sources, explores complex topics thoroughly, and provides comprehensive overviews to accelerate your understanding of new subjects.

The Deep Research agent provides in-depth, multi-page reports grounded in thorough web research and your company data.

1. Under the **Agent** tab on the left navigation menu, select the **Deep Research** agent.
   
   <br>

   <img src="jumpstart_images/image-22_bordered.png" width="80%" />

<br><br>

2. Paste the following prompt: `Compare the effectiveness of different marketing strategies for reaching Gen Z consumers.`

3. **Review Research Plan:**
   * Review the generated plan.
   * You can ask the assistant to make edits, OR
   * Simply click **Start Research**.
   
   <br>

   <img src="jumpstart_images/image-23_bordered.png" width="80%" />

<br><br>

4. Wait a few minutes as Gemini Enterprise searches hundreds of sources, generates new questions, and refines its plan along the way. <br>

5. **Review Results:**
   * Read through the multi-page report.
   * Review the citations.
   * Listen to the audio summary (if available).

   *(Note: The full process will take a few minutes to complete. If preferred, duplicate the browser tab and continue the lab tasks on the newly created tab. Come back to the original tab for results.)*
   
   <br>

   <img src="jumpstart_images/image-24_bordered.png" width="80%" />

<br><br>

<div class="nav-link"><a href="#top">↑ Back to Top</a></div>

---

<div id='section-9'></div>

# Task 8: Generating Media (Images and Video)

Gemini Enterprise allows you to generate images and videos using Google’s state-of-the-art models.

1. **Access Image Generator:**
   * Click the **New chat** button.
   * In the Omnibar, select the **Image generator** tool.
   
2. Paste the following prompt: `I have a new product which can search across 100+ data sources and help me analyze blended data and create agents on this blended data. Generate an image for its website.`

   <br>

   <img src="jumpstart_images/image-25_bordered.png" width="80%" />

<br><br>

3. Once the response is generated, click the option to copy or download the image.
   
   <br>

   <img src="jumpstart_images/image-26_bordered.png" width="80%" />

<br><br>

4. **Access Video Generator:**
   * Click the **New chat** button.
   * In the Omnibar, select the **Generate videos with Veo** tool.
   
5. Paste the following prompt to test the model's cinematic capabilities: `A cinematic time-lapse of a bustling futuristic server room with glowing blue lights, sleek data racks, and a smooth camera pan.`

6. Once the response is generated, notice that the video is up to 8 seconds long and includes options to be downloaded for offline use.
   
   <br>

   <img src="jumpstart_images/image-27_bordered.png" width="80%" />

<br><br>

<div class="nav-link"><a href="#top">↑ Back to Top</a></div>

---

<div id='section-10'></div>

# Task 9: Unlocking Insights with NotebookLM

Embedded directly within Gemini Enterprise, **NotebookLM** serves as a specialized AI research and writing assistant designed to bridge the gap between vast data silos and actionable insights. Unlike general-purpose AI, it operates as a **"grounded" collaborator**, meaning its intelligence is strictly anchored to the specific documents you provide rather than general internet data.

### Personal Knowledge Management
NotebookLM transforms static files—such as PDFs, Google Docs, slide decks, and web URLs—into an **interactive knowledge base**. By focusing exclusively on your curated sets of content, it drastically reduces the risk of misinformation, ensuring that every answer is synthesized from your own trusted data.

### Key Features & Functionality
* **Source-Grounded Insights:** When you ask a question, NotebookLM provides **inline citations** that link directly to the original passage in your source documents, making fact-checking instantaneous.
* **Multi-Modal Synthesis:** It can instantly generate structured outlines, study guides, or creative briefs based on hundreds of pages of messy notes or complex technical manuals.
* **Audio Overviews:** A standout feature is the ability to generate **Deep Dive Audio Discussions**. It creates a conversational, podcast-style summary where AI hosts explain the key themes and nuances of your uploaded material.
* **Enterprise-Grade Compliance:** Because it is integrated into Gemini Enterprise, your data remains private. Your proprietary information is **never used to train** global AI models, ensuring your intellectual property stays within your organization’s secure boundary.

### The Strategic Advantage
Essentially, NotebookLM is built for the "heavy lifting" phase of a project. While standard AI is great for general tasks, NotebookLM is where you go when you need to master a specific, complex topic—such as analyzing a year's worth of legal transcripts or preparing a strategy based on internal market research. To get started:


1. **Navigate to Agents:**
   * Expand the left navigation menu.
   * Click on the **Agents** tab.

2. Select **NotebookLM**.
   
   <br>

   <img src="jumpstart_images/image-28_bordered.png" width="80%" />

<br><br>

3. Click **Create a new Notebook**.
   
   <br>

   <img src="jumpstart_images/image-29_bordered.png" width="80%" />

<br><br>

4. **Import Content:**
   * Download the following sample documents to your local machine:
     * [Web Company's Product Capabilities](https://github.com/caugusto/GE-Value-workshop/blob/main/data/ge_sample_data_for_workshop/acme-co/Web%20Company's%20Product%20Capabilities.pdf)
     * [Web Design RFP](https://github.com/caugusto/GE-Value-workshop/blob/main/data/ge_sample_data_for_workshop/acme-co/Web%20Design%20RFP.pdf)
   * Import both files into your newly created notebook to begin the analysis.   
   
   <br>

   <img src="jumpstart_images/image-30_bordered.png" width="80%" />

<br><br>

5. In the chat interface (bottom middle), type: `Summarize the key requirements, evaluation criteria, and deadlines outlined in the RFP`.

6. When the answer is returned, click on a citation number within the text to view the specific source content for that point.
   
   <br>

   <img src="jumpstart_images/image-31_bordered.png" width="80%" />

<br><br>

7. Ask a follow up question: `Are there any gaps we cant cover based on the rfp requirements?`


8. Locate the **Mind Map** feature in the NotebookLM interface and click on it to create one. Once generated, explore the map.
   
   <br>

   <img src="jumpstart_images/image-32_bordered.png" width="80%" />

<br><br>

9. **Customize Audio Overview:**
   * Locate the **Audio Overview** feature.
   * Hover over it and click the **three dots**.
   * Select the option to **customize** the audio focus.


   <br>

   <img src="jumpstart_images/image-34_bordered.png" width="80%" />

<br><br>

* **Generate Audio:**
     * **Type**: `Focus on why Acme's solutions and products for this RFP`.
     * Choose **Default length**.
     * Click **Generate** to create a dynamic, podcast-style audio discussion.
   
   <img src="jumpstart_images/image-33_bordered.png" width="80%" />

<br><br>

*(Note: The full audio generation may take several minutes to complete. Once your audio generation is submitted and running, you can move on to the next task and come back afterwards to check the results.)*


10. **Customize Video Overview:**
    * Locate the **Video Overview** feature.
    * Hover over it and click the **three dots**.
    * Select the option to **customize** the video focus.


   <br>

   <img src="jumpstart_images/image-35_bordered.png" width="80%" />

<br><br>

* **Generate Video:**
     * **Type**: `Focus on why Acme's solutions and products for this RFP`.
     * Click **Generate** to create a video discussion.
   
   <img src="jumpstart_images/image-36_bordered.png" width="80%" />

<br><br>

*(Note: The full video generation may take several minutes to complete. Once your video generation is submitted and running, you can move on to the next task and come back afterwards to check the results.)*


11. **Generate FAQ Report:**
    * Locate the **Reports** feature.
    * Click on it and select **FAQ**.
    * *Notice a new note is generated under the studio column.*

   <br>

   <img src="jumpstart_images/image-37_bordered.png" width="80%" />

<br><br>

12. **Saving a New Note:**
    * In the **Chat area**, type: `What criteria will DreamWeave use for evaluation?`
    * Submit the question.
    * Once you get an answer, click the **"Save to note"** button at the bottom.
    * *Notice a new note is automatically generated in the Studio area.*

   <br>

   <img src="jumpstart_images/image-38_bordered.png" width="80%" />

<br><br>

<img src="jumpstart_images/image-39_bordered.png" width="80%" />

<br><br>

13. **Experiment with Your Data and Prompts**: Don’t hesitate to experiment with different ways of interacting with NotebookLM. Whether you're asking for summaries, brainstorming ideas, or generating new content, varying your prompts can unlock creative insights you may not have   anticipated. For instance, instead of just asking for an overview, try prompting NotebookLM to compare two different policies or identify emerging trends. The tool’s flexibility means there’s always room for discovery. 

   Here are some prompt ideas for you to try:
   - Explain this document in the form of a short story.
   - Compare and contrast Document 1 with Document 2.
   - Give me a pro/cons list for the solutions proposed in this document.
   - Format a proposal for X based on the information in these documents.


<div class="nav-link"><a href="#top">↑ Back to Top</a></div>

---

<div id='section-11'></div>

# Task 10: Build an Agent from a Prompt with Agent Designer

With Agent Designer enabled, you can rapidly build custom agents starting with just a simple text prompt.

1. In the left-hand navigation menu, click **Agents**.

2. Click **+ New agent**.

   <br>
   
   <img src="jumpstart_images/image-40_bordered.png" width="80%" />

<br><br>

3. At the bottom of the Agent Designer page, you'll see a prompt input. Enter: 
   `Use google search capabilities to prepare a daily briefing of news from the past 48 hours on the topics provided. The brief should be presented in a bulleted list with key phrases bolded.`

   <br>

   <img src="jumpstart_images/image-41_bordered.png" width="80%" />

<br><br>

4. **Submit the Prompt:**
   * Click submit.
   * *You will see a preview panel featuring a draft of your agent.*


5. **Explore Agent View:**
   * At the top of the agent's preview card, explore **Flow**, **Schedule**, and **Preview**.
   * Click **Flow** to see the auto-created Builder view.
   
   <img src="jumpstart_images/image-42_bordered.png" width="80%" />

<br><br>

6. Click **Schedule** at the top of the agent draft panel to automate your daily briefing.

7. Click **+ Add schedule**. 

   <img src="jumpstart_images/image-43_bordered.png" width="80%" />

<br><br>

8. Keep the frequency set to **Daily** with the default time and timezone. For the **triggering prompt**, enter:

       Prepare my daily briefing on the following topics:
       - Lawn watering automation
       - Solar panel technology
       - Landscape lighting
       - Sales on large planters
   
   <img src="jumpstart_images/image-44_bordered.png" width="80%" />

<br><br>

9. Click **Add schedule** at the bottom to confirm.

10. Click the **play icon (Run in Preview)** to run the agent with the scheduled prompt immediately. 

<img src="jumpstart_images/image-45_bordered.png" width="80%" />

<br><br>

You'll see a result in the agent draft's Preview tab.

11. To save your agent for future use, click **Create** in the upper right. *(Note: This scheduled agent will now run daily based on the schedule you set.)*

12. **Test the Agent:**
    * Select **Agents** on the left navigation panel.
    * **Click** on the newly created agent.
   
   Make sure the **Google Search** connector is enabled under Tools and type `I need a quick news summary on global economic trends and cybersecurity threats over the last 48 hours.`

   <br>

   <img src="jumpstart_images/image-46_bordered.png" width="80%" />

<br><br>

<div class="nav-link"><a href="#top">↑ Back to Top</a></div>

---

<div id='section-12'></div>

# Task 11: Build an Agent with the Agent Designer Builder

Take more control of the agent-building process by using the manual Builder interface and adding multi-step subagents.

1. In the left-hand menu, under the **Agents** header, click **+ New agent**.

2. To bypass the prompt input and build manually, click the **Proceed to Builder** link.
   
3. Click the starting agent node named **My Agent**.

4. Update the agent's **Name** to `Sales Call Followup Agent`.

5. Next to the agent's Name field, click on the upload icon labeled **Icon**. [Download a Sample Robot Icon here](https://github.com/caugusto/GE-Value-workshop/raw/main/data/ge_sample_data_for_workshop/robot_icon.jpg).
   
   <img src="jumpstart_images/image-47_bordered.png" width="80%" />

<br><br>

6. For the **Description**, enter:
   `Agent to help with next steps after sales calls.`

7. For **Instructions**, enter:
   `When presented with notes from a sales call, write a 1-sentence paragraph thanking the customer for the opportunity to bid on their project and write a paragraph to summarize of the call. Then transfer to the Followup Questions subagent.`

8. **Add a Subagent:**
   * Click the grid to dismiss the detail popup.
   * Hover over the agent node.
   * Click the **plus icon** to add a subagent.
   
   <img src="jumpstart_images/image-48_bordered.png" width="80%" />

<br><br>

9. Update the subagent's **Name** to `Followup Questions`.

10. For the **Description**, enter:
    `Generate additional discovery questions based on the customer's scope.`

11. For **Instructions**, enter:
    `Develop a list of discovery questions to define the client's needs requirements for materials, tools, and additional expenses (walkway stones, fountains, landscape lighting, etc. in greater detail).`

12. In the upper right corner, click **Create**.

13. Click **Chat with Agent**. In the input field, test your new agent by entering the following sales call notes:

        The Wilson Hotel Sales Call Notes:
        - customer needs lawn maintenance
        - 3 hectares of land
        - needs a pond dug and 3 trees planted
        - wants lawn maintained twice per month
    
    <img src="jumpstart_images/image-49_bordered.png" width="80%" />

<br><br>

14. In the left-hand navigation, click the **Agents** section header. You will now see your *Sales Call Followup Agent* listed under *Your agents*.

15. **Pin the Agent:**
    * Click the **three dots** on the agent's card.
    * Select the **pin icon** for quick access from the navigation pane.
    * Notice the agent now appears on the left side navigation, under the **Agents** section.
    
    <img src="jumpstart_images/image-50_bordered.png" width="80%" />

<br><br>

</div>
<div class="nav-link"><a href="#top">↑ Back to Top</a></div>

---

<div id='section-13'></div>

# Task 12: Review Submitted Tasks

- Check Previously Submitted Deep Research Task
- Check NotebookLM Audio and Video Generation
- Check Idea Generation Tournment Progress (should still be running)

<br>

<div class="nav-link"><a href="#top">↑ Back to Top</a></div>

---

# 🎉 Congratulations!

You have completed the **Gemini Enterprise Hands-on Lab**.

**What you accomplished today:**
- **Familiarized** yourself with the basic Assistant features.
- **Leveraged** Search and File Analysis to interact with web and internal data.
- **Personalized** your experience to streamline workflow.
- **Explored NotebookLM** to anchor AI insights strictly to your trusted documents and generate multi-modal summaries.
- **Discovered and Created custom agents** to solve common workflow problems in just a few steps.

You are now ready to apply these items to increase your daily productivity.
