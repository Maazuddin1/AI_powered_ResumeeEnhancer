---
title: AI Resume Enhancer
emoji: 🚀
colorFrom: blue
colorTo: purple
sdk: gradio
sdk_version: 5.22.0
app_file: app.py
pinned: false
---


# AI Resume Enhancer

## Overview

The AI Resume Enhancer is a web application that helps users tailor their resumes to specific job descriptions using the Gemini 1.5 Pro model. It allows users to upload their resume in various formats (PDF, DOCX, TXT, RTF), input a job description, and receive an enhanced resume optimized for the specified job. The application also provides a match score, highlights key skills and keywords, and allows users to download the enhanced resume in PDF or TXT format.

## Features

-   **Resume Enhancement:** Enhances resumes based on job descriptions using AI.
-   **Template Selection:** Offers different resume templates (Engineering, FAANG/Tech, Non-Technical).
-   **Output Format:** Supports standard and modern PDF output formats.
-   **Match Score:** Calculates a match score between the resume and job description.
-   **Keyword and Skill Highlighting:** Identifies and highlights key skills and keywords.
-   **Downloadable Resumes:** Generates enhanced resumes in PDF and TXT formats.
-   **Tailoring:** Further tailors the enhanced resume for a specific job.

## Technologies Used

-   **Frontend:** HTML, CSS, JavaScript, Bootstrap
-   **Backend:** Python, Flask
-   **AI Model:** Gemini 1.5 Pro
-   **PDF Generation:** FPDF
-   **Other Libraries:** python-dotenv, werkzeug, pdfminer.six, python-docx, uuid, requests

## Setup and Installation

1.  **Clone the repository:**

    ```bash
    git clone <repository_url>
    cd resumeenhancer
    ```

2.  **Install the required Python packages:**

    ```bash
    pip install -r requirments.txt
    ```

3.  **Set up environment variables:**

    -   Create a `.env` file in the root directory.
    -   Add your Gemini API key to the `.env` file:

        ```
        GEMINI_API_KEY="YOUR_GEMINI_API_KEY"
        ```

4.  **Download Fonts:**
    The application downloads fonts on startup. Ensure that the application has permission to write to the `fonts` directory.

## Usage

1.  **Run the Flask application:**

    ```bash
    python app.py
    ```

2.  **Open the application in your web browser:**

    -   The application runs on `http://0.0.0.0:5000` by default.

3.  **Upload your resume:**

    -   Click the "Choose File" button to upload your resume.
    -   Supported formats: PDF, DOCX, TXT, RTF.
    -   Maximum file size: 10MB.

4.  **Enter the job description:**

    -   Paste the job description into the "Job Description" textarea.

5.  **Select a resume template:**

    -   Choose a template from the "Resume Template" dropdown.
    -   Options: Engineering, FAANG/Tech, Non-Technical.

6.  **Select an output format:**
    - Choose an output format from the "Output Format" dropdown.
    - Options: Standard, Modern

7.  **Enhance your resume:**

    -   Click the "Enhance Resume" button.
    -   Wait for the application to process the resume and job description.

8.  **View the results:**

    -   The enhanced resume will be displayed in the "Enhanced Resume" tab.
    -   The original resume will be displayed in the "Original Resume" tab.
    -   A match score, key skills, and keywords will be displayed in the "Match Analysis" section.

9.  **Download the enhanced resume:**

    -   Click the "Download PDF" or "Download TXT" button to download the enhanced resume in the desired format.

10. **Further Tailor the resume:**
    - Click the "Further Tailor for This Job" button to further tailor the enhanced resume for the job description.

## Deployment

### Hugging Face Spaces

1.  **Create a new Space on Hugging Face:**

    -   Go to [Hugging Face Spaces](https://huggingface.co/spaces) and click "Create new Space".
    -   Choose a name for your Space.
    -   Select "Gradio" as the Space SDK.
    -   Choose a visibility setting (public or private).

2.  **Upload the application files:**

    -   Clone your new Space's Git repository to your local machine.
    -   Copy all the files from your local `resumeenhancer` repository to the Space's repository.
    -   Add the following to the `requirments.txt` file
        ```
        gunicorn
        ```

3.  **Configure the Space:**

    -   Add your Gemini API key as a secret to the Hugging Face Space. Go to the Space settings and add a new secret named `GEMINI_API_KEY` with your API key as the value.
    -   In the `app.py` file, use `os.environ.get("GEMINI_API_KEY")` to access the API key.

4.  **Push the changes to the Space's Git repository:**

    ```bash
    git add .
    git commit -m "Initial commit"
    git push
    ```

5.  **The Space will automatically build and deploy the application.**

### Alternative Deployment (Heroku, etc.)

1.  **Create a `Procfile` in the root directory:**

    ```
    web: gunicorn app:app --timeout 600
    ```

2.  **Deploy the application to your preferred platform (e.g., Heroku).**

3.  **Set the `GEMINI_API_KEY` environment variable in your deployment environment.**

## Logging

The application uses the `logging` module to log events to both a file (`app.log`) and the console. This helps in debugging and monitoring the application.

## Contributing

Contributions are welcome! Please feel free to submit pull requests or open issues to suggest improvements or report bugs.

## License

[MIT]

## Contact

[Nishanth, Maaz] - [nishanth0962333@gmail.com , maazuddin173@gmail.com]