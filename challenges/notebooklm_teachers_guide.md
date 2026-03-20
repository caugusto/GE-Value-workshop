# NotebookLM Challenge Labs - Teacher's Guide

This guide provides the step-by-step solutions for completing the NotebookLM Challenge Labs. It is intended for instructors to assist students who may get stuck.

---

## Challenge Lab 1: Financial Analyst Briefing

**Objective:** Synthesize a YouTube video and a corporate document to extract insights and generate an audio overview.

### Step-by-Step Solution:

1. **Workspace Setup:**
   * Navigate to NotebookLM and click **Create a new Notebook**.
   * Name the notebook "Alphabet Q4 Earnings".
   * Click the **Add Source** button (the `+` icon).
   * Choose **YouTube URL** and paste: `https://www.youtube.com/watch?v=mIK5-yi7a-c`. Click **Insert**.
   * Click **Add Source** again. Choose **Link** and paste the press release URL: `https://s206.q4cdn.com/479360582/files/doc_financials/2025/q4/2025q4-alphabet-earnings-release.pdf`.
   * Click **Add Source** once more. Choose **Link** and paste: `https://about.google/company-info/our-story/`.
   * Click **Add Source** -> **Discover sources**. In the "What are you interested in?" box, type: `Recent trends in Artificial Intelligence capital expenditures`. Select a relevant generated source and click **Insert**.

2. **Company Timeline:**
   * In the chat box, type: `Based on the 'Our Story' web link, create a chronological timeline of the most important milestones in Google's history.`
   * Press **Enter**. Click the **Save to note** icon.

3. **Revenue Drivers:**
   * In the chat box at the bottom, type: `What are the top 3 revenue-driving products or services mentioned in the earnings sources? Be specific about growth percentages if available.`
   * Press **Enter**.
   * Once the response is generated, click the **Save to note** icon (pin icon) to save it to your notebook's studio space.

4. **Risk Identification:**
   * In the chat box, type: `What are the biggest risks, financial headwinds, or market challenges discussed by the executives on this call?`
   * Press **Enter**.
   * Click the **Save to note** icon.

5. **Q&A Extraction:**
   * In the chat box, type: `List all the questions asked by analysts during the earnings call and provide a concise summary of the answers given by the executives.`
   * Press **Enter**. Click the **Save to note** icon.

6. **Commuter Briefing (Audio):**
   * In the Studio panel (top right), locate the **Audio Overview** feature.
   * Click the **Customize** button (or the three dots/gear icon).
   * In the customization prompt, type: `Focus the discussion entirely on Alphabet's AI investments, infrastructure costs, and capital expenditures. Ignore advertising revenue.`
   * Click **Generate**. (Note: Audio generation takes a few minutes).

---

## Challenge Lab 2: GTM Strategy & Cross-Department Synthesis (Marketing)

**Objective:** Synthesize multiple data documents (marketing, sales, and feedback) to find correlations, perform sentiment analysis, and generate a strategic recommendation.

### Step-by-Step Solution:

1. **Workspace Setup:**
   * Navigate to NotebookLM and click **Create a new Notebook**.
   * Name the notebook "XYZ GTM Strategy".
   * Drag and drop the three text files (`MARKETING_data.txt`, `SALES_data.txt`, and `customer_feedback.txt`) from the `data/ge_sample_data_for_workshop/xyz-sales-company/notebooklm/` folder into the Add Source area.
   * Click **Add Source** -> **Discover sources**. Type: `Best practices for interpreting customer feedback and B2B sales data`. Select a relevant guide and click **Insert**.

2. **Cross-Department Synthesis:**
   * In the chat box, type: `Based on the marketing data and sales data documents, identify three specific areas where marketing campaigns correlated with strong or weak sales performance.`
   * Press **Enter**. Review the citations to see how NotebookLM connects the two distinct files. Click the **Save to note** icon to preserve the insight.

3. **Sentiment Analysis:**
   * In the chat box, type: `Analyze the customer feedback document. What are the top three most recurring themes or complaints? Do any of these themes directly relate to the initiatives mentioned in the sales or marketing documents?`
   * Press **Enter**. Click **Save to note**.

4. **Strategy Memo Generation:**
   * In the chat box, type: `Draft a concise Next Quarter Strategy Memo addressed to the GTM Director. Based strictly on the data overlaps and customer feedback in these sources, recommend two specific, actionable steps we must take next quarter. Cite the evidence.`
   * Press **Enter**.
   * Click the **Save to note** icon to finalize the strategy brief.

5. **Team Briefing (Video):**
   * In the Studio panel, locate the **Video Overview** feature.
   * Click the **Customize** button (or the three dots/gear icon).
   * In the customization prompt, type: `Create a video discussing the alignment and gaps between our recent marketing campaigns and overall customer happiness.`
   * Click **Generate**. (Note: Video generation may take several minutes to complete).

---

## Challenge Lab 3: Caffeine & Sleep Analysis

**Objective:** Use NotebookLM's "Discover sources" feature to gather research and correlate clinical data to propose a data-backed wellness plan.

### Step-by-Step Solution:

1. **Workspace Setup:**
   * Navigate to NotebookLM and click **Create a new Notebook**.
   * Name the notebook "Sleep Analysis".
   * Click **Add Source** -> **Link** and paste: `https://www.sleepfoundation.org/nutrition/caffeine-and-sleep`.
   * Click **Add Source** -> **Discover sources**. 
   * In the text box, type: `The physiological effects of caffeine on adenosine receptors and sleep cycles`. Select a relevant generated source and click **Insert**.
   * Click **Add Source** -> **Discover sources** again.
   * Type: `Evidence-based sleep hygiene tips for adults`. Select a relevant source and click **Insert**.

2. **Data Correlation:**
   * In the chat box, type: `Based on the physiological effects described in the sources, explain the exact biological mechanism (e.g., adenosine receptors) of why late-day caffeine intake disrupts sleep architecture.`
   * Press **Enter**. Review how NotebookLM synthesizes the discovered data. Click **Save to note**.

3. **Wellness Plan:**
   * In the chat box, type: `Write a friendly, personalized 3-point wellness plan for a hypothetical client who frequently drinks coffee at 5 PM to improve their sleep hygiene. Base the recommendations specifically on evidence from the discovered sources.`
   * Press **Enter**. Click **Save to note**.

4. **Study Summary Brief:**
   * In the chat box, type: `Create a concise briefing document summarizing the key takeaways from the clinical overview we discovered regarding caffeine's impact on REM and deep sleep.`
   * Press **Enter**.
   * Click the **Save to note** icon to finalize the brief.

5. **Client Audio Overview:**
   * In the Studio panel, locate the **Audio Overview** feature.
   * Click the **Customize** button (or the three dots/gear icon).
   * In the customization prompt, type: `Focus the discussion on explaining how adenosine receptors work and present our new 3-point wellness plan for the client.`
   * Click **Generate**. (Note: Audio generation takes a few minutes).
