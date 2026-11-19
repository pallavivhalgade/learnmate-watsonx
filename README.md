# learnmate-watsonx
Agentic AI for Personalized Course Pathways using IBM Watsonx

# LearnMate – Agentic AI for Personalized Course Pathways

LearnMate is an intelligent course path advisor built using IBM Watsonx. It interacts with students to understand their interests and skill level, then dynamically generates personalized learning roadmaps using foundation models and vector indexes.

<a id="system-architecture"></a>
## 🏗️ System Architecture

This repository supplies the agent prompt, a roadmap PDF, and an example API caller. The agent and document index must be configured in IBM watsonx; the diagram describes that hosted interaction, not an additional local backend.

```mermaid
flowchart TD
    A["Interests and current skill level"] --> B["Hosted watsonx agent"]
    CALL["Shell API caller"] --> IAM["IBM Cloud IAM token"]
    IAM --> B
    B --> C["LearnMate prompt and course selection"]
    C --> D["Configured roadmap vector index"]
    PDF["Uploaded roadmap PDF"] --> D
    D --> E["Personalized learning roadmap"]
    class A,CALL,PDF entry
    class B,C process
    class IAM,D system
    class E output
    classDef entry fill:#EAF2FF,stroke:#5275AD,color:#1E3556
    classDef process fill:#F0EBFA,stroke:#8870B2,color:#3B2856
    classDef system fill:#FFF2DA,stroke:#AA8440,color:#51401E
    classDef output fill:#E3F4EC,stroke:#4C8A72,color:#234C3B
    classDef pending fill:#F8E9E7,stroke:#AD706A,color:#653C37,stroke-dasharray:5 5
```

<details>
<summary><strong>Follow the implementation</strong></summary>

| Stage | Source |
| --- | --- |
| Agent behavior | [learnmate_prompt.txt](learnmate_prompt.txt) |
| API invocation | [call_learnmate_agent.sh](call_learnmate_agent.sh) |
| Roadmap document | [course_roadmaps.pdf](course_roadmaps.pdf) |

</details>

## 🔍 Features
- AI Mentor using Watsonx foundation models (Granite)
- Adaptive course recommendations by skill level
- Course roadmap documents (PDFs) managed via vector index
  
## 📂 Repository Structure
- `agent/`: Prompt and agent logic
- `pdf/`: Course content used as knowledge base
- `json/`: Configurations for Watsonx agent setup

## 🚀 Technologies
- IBM Watsonx (Granite-13b, Prompt Lab, Vector Index)
- Python
- NLP, RAG

---

## About the developer

Built by **Pallavi Vholgade**. Explore my AI / ML projects, experience, and skills in my [portfolio](https://pallavi-portfolio-preview.vercel.app).

[LinkedIn](https://www.linkedin.com/in/pallavi-vholgade-05565b24b) · [Email](mailto:vhalgadepallavi45@gmail.com)
