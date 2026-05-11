# Module 07 — Agentic AI

> **Status:** ⬜ Upcoming — *The Destination*

Autonomous AI systems that plan, reason, use tools, and collaborate. This is the culmination of the entire certification.

---

## Learning Objectives

- Understand the ReAct pattern and why it works
- Build single agents with tools, memory, and structured reasoning
- Design multi-agent systems where agents collaborate to solve complex tasks
- Implement stateful workflows with LangGraph
- Evaluate and debug agentic systems in production

---

## Topics Covered

### LangChain
| Notebook | Topics |
|----------|--------|
| `langchain/01_chains.ipynb` | LCEL, chain composition, runnables |
| `langchain/02_tools_and_agents.ipynb` | Tool definition, agent executors, ReAct |
| `langchain/03_memory.ipynb` | Conversation buffer, summary, entity memory |
| `langchain/04_retrieval_agents.ipynb` | Agents with RAG, document QA |

### LangGraph
| Notebook | Topics |
|----------|--------|
| `langgraph/01_graphs_and_state.ipynb` | Nodes, edges, state schema |
| `langgraph/02_conditional_routing.ipynb` | Conditional edges, branching logic |
| `langgraph/03_human_in_the_loop.ipynb` | Interrupt, human approval, resume |
| `langgraph/04_multi_agent_graph.ipynb` | Supervisor pattern, agent handoffs |

### CrewAI
| Notebook | Topics |
|----------|--------|
| `crewai/01_crews_and_roles.ipynb` | Agents, tasks, crew configuration |
| `crewai/02_custom_tools.ipynb` | Building tools for CrewAI agents |
| `crewai/03_research_crew.ipynb` | End-to-end research + writing crew |

### AutoGen
| Notebook | Topics |
|----------|--------|
| `autogen/01_conversational_agents.ipynb` | AssistantAgent, UserProxyAgent |
| `autogen/02_group_chat.ipynb` | GroupChat, speaker selection |
| `autogen/03_code_execution.ipynb` | Code-writing agents with execution |

---

## Key Patterns

| Pattern | Description | Framework |
|---------|-------------|-----------|
| ReAct | Reason → Act → Observe loop | LangChain, LangGraph |
| Plan & Execute | Planner + executor separation | LangGraph |
| Reflection | Agent critiques its own output | LangGraph |
| Supervisor | Central agent delegates to specialists | CrewAI, LangGraph |
| Role-based | Each agent has a specific persona + goal | CrewAI |
| Conversational | Agents converse to reach a solution | AutoGen |

---

[← Module 06](../06-llm-engineering/README.md) | [Back to main README](../../README.md)
