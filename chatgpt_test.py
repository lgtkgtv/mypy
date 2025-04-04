import openai
import os

def chat_with_gpt(prompt):
    """Interacts with the OpenAI API to generate a response."""
    client = openai.OpenAI() # create an openai client.
    response = client.chat.completions.create( # use client.chat.completions.create()
        model='gpt-3.5-turbo',
        messages=[{'role': 'user', 'content': prompt}]
    )
    return response.choices[0].message.content # access the message content differently.

if __name__ == '__main__':
    # Get the API key from the environment variable
    openai.api_key = os.environ.get('OPENAI_API_KEY')

    if openai.api_key is None:
        print("Error: OpenAI API key not found in environment variables.")
        exit(1)

    user_input = input('Ask ChatGPT something: ')
    print('ChatGPT says:', chat_with_gpt(user_input))   
