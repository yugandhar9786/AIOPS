# Prompt Engineering for Generative AI

Prompt engineering is the art of asking the right question to get the best output from an LLM. It enables direct interaction with the LLM using only plain language prompts.

In the past, working with machine learning models typically required deep knowledge of datasets, statistics, and modeling techniques. Today, LLMs can be "programmed" in English, as well as other languages.


Being a great prompt engineer doesn't require coding experience. Creativity and persistence will benefit you greatly on your journey, however. Read on to learn some useful prompting techniques.

# Prompting Best Practices

Clearly communicate what content or information is most important.

Structure the prompt: Start by defining its role, give context/input data, then provide the instruction.

Use specific, varied examples to help the model narrow its focus and generate more accurate results.

Use constraints to limit the scope of the model's output. This can help avoid meandering away from the instructions into factual inaccuracies.

Break down complex tasks into a sequence of simpler prompts.

Instruct the model to evaluate or check its own responses before producing them. ("Make sure to limit your response to 3 sentences", "Rate your work on a scale of 1-10 for conciseness", "Do you think this is correct?").

And perhaps most important:

Be creative! The more creative and open-minded you are, the better your results will be. LLMs and prompt engineering are still in their infancy, and evolving every day.


# Types of Prompts


# Direct prompting (Zero-shot)
Direct prompting (also known as Zero-shot) is the simplest type of prompt. It provides no examples to the model, just the instruction. You can also phrase the instruction as a question, or give the model a "role," as seen in the second example below.

Provide:

Instruction
Some context

# Few and Multi shot Prompting

Few- and multi-shot prompting shows the model more examples of what you want it to do. It works better than zero-shot for more complex tasks where pattern replication is wanted, or when you need the output to be structured in a specific way that is difficult to describe.

# Chain of tought prompting


Chain of Thought (CoT) prompting encourages the LLM to explain its reasoning. Combine it with few-shot prompting to get better results on more complex tasks that require reasoning before a response.

