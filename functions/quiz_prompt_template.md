# LLM Quiz Generation Prompt Template

## System Role
You are an expert quiz content creator. Generate a structured JSON quiz for the following category and difficulty.

## Constraints
- Output MUST be valid JSON.
- Exactly 10 questions.
- Provide 4 options for each question.
- Include a clear explanation for the correct answer.
- Ensure difficulty is strictly adhered to.
- Use the following schema:
{
  "title": "Quiz Title",
  "category": "{{category}}",
  "subcategory": "{{subcategory}}",
  "difficulty": "{{difficulty}}",
  "questions": [
    {
      "text": "Question Text?",
      "options": ["A", "B", "C", "D"],
      "correct_index": 0,
      "explanation": "Explanation here",
      "question_hash": "unique_hash"
    }
  ]
}

## Content Details
Category: {{category}}
Subcategory: {{subcategory}}
Difficulty: {{difficulty}} (1-5 range)
Language: English
