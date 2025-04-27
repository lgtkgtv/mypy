# Garak 
  Generative AI Red-teaming & Assessment Kit (Garak) 

- What is it
- Understand the Basics of LLM Vulnerabilities
- Install and Set Up Garak
- Familiarize Yourself with the Command-Line Interface (CLI)
- Start with Basic Scans
- Customize Scans
- Analyze Scan Results
- Advanced Techniques

## demo 

https://github.com/wunderwuzzi23/wuzzi-chat

```sh
uv python install 3.12
uv venv --python 3.12 venv-py312
source venv-py312/bin/activate

python --version
pip --version


uv pip install -U garak

garak --list_probes
    garak LLM vulnerability scanner v0.10.1 ( https://github.com/NVIDIA/garak ) at 2025-01-16T16:37:46.991138
    probes: ansiescape 🌟
    probes: ansiescape.AnsiEscaped
    probes: ansiescape.AnsiRaw

```
## Examples

Probe ChatGPT for encoding-based prompt injection (OSX/*nix) (replace example value with a real OpenAI API key)

```
export OPENAI_API_KEY="sk-123XXXXXXXXXXXX"
garak --model_type openai --model_name gpt-3.5-turbo --probes encoding
```

See if the Hugging Face version of GPT2 is vulnerable to DAN 11.0
```
garak --model_type huggingface --model_name gpt2 --probes dan.Dan_11_0
```

## resources

YT Video: 

    https://www.youtube.com/watch?v=f713_sFqItY

11 LLM Security Tools:

    https://granica.ai/blog/llm-security-tools-grc
    
---

**1. what is Garak**

Garak is a LLM vulnerability scanner. It is a free tool that probes for hallucination, data leakage, prompt injection, misinformation, toxicity generation, jailbreaks, and many other weaknesses. It combines static, dynamic, and adaptive probes to explore the possible weaknesses.  

**1. Understand the Basics of LLM Vulnerabilities**

* **Hallucinations:** 

LLMs sometimes generate factually incorrect or nonsensical outputs, even when provided with correct information.

* **Data Leakage:** 

Sensitive information, such as user data or training data, can be inadvertently revealed through LLM outputs.

* **Prompt Injection:** 

Malicious users can manipulate prompts to induce the LLM to perform unintended actions, such as generating harmful content or revealing sensitive information.

* **Misinformation:** 

LLMs can be used to generate misleading or false information, which can be harmful to individuals and society.

* **Toxicity Generation:** 

LLMs can generate toxic or harmful content, such as hate speech, violence, or discrimination.

* **Jailbreaks:** 

Techniques that trick an LLM into bypassing its safety guidelines and generating harmful or unexpected output.

**2. Install and Set Up Garak**

* **Prerequisites:** Ensure you have Python and pip installed on your system.
* **Installation:** Use pip to install Garak: `pip install garak`
* **Verify Installation:** Run `garak --version` to check if the installation was successful.




**3. Familiarize Yourself with the Command-Line Interface (CLI)**

* **Basic Usage:**
    * `garak scan`: This is the primary command for running vulnerability scans.
    * `garak help`: Provides general help and information about Garak.
    * `garak help <command>`: Provides detailed help for a specific command (e.g., `garak help scan`).
* **Key Options:**
    * `--target`: Specify the LLM or API endpoint to scan.
    * `--vulnerabilities`: Specify the types of vulnerabilities to check for (e.g., `hallucination`, `data_leakage`).
    * `--tests`: Specify the number of test cases to run.
    * `--output`: Specify the output format for the scan results (e.g., JSON, CSV).
    * `--config`: Load a configuration file with custom settings.

**4. Start with Basic Scans**

* **Run a Default Scan:** 
    ```bash
    garak scan --target <your_llm_endpoint> 
    ```
    This will run a basic scan with default settings, checking for a range of common vulnerabilities.
* **Analyze Initial Results:** Review the generated report to understand the types of vulnerabilities detected and their severity.

**5. Customize Scans**

* **Target Specific Vulnerabilities:**
    ```bash
    garak scan --target <your_llm_endpoint> --vulnerabilities hallucination,data_leakage 
    ```
* **Adjust Test Cases:**
    ```bash
    garak scan --target <your_llm_endpoint> --tests 100 
    ```
* **Control Output:**
    ```bash
    garak scan --target <your_llm_endpoint> --output json > results.json
    ```
* **Use a Configuration File:** Create a YAML file with custom settings and use the `--config` flag to load it.

**6. Analyze Scan Results**

* **Review Reports:** Carefully examine the generated reports (e.g., JSON, CSV) to identify potential vulnerabilities.
* **Prioritize Remediation:** Focus on addressing the most critical vulnerabilities first.
* **Use Visualization Tools:** Consider using visualization tools to better understand the scan results and identify patterns.

**7. Use Advanced Techniques**

* **Fuzzing:** Generate a large number of random or semi-random prompts to test the LLM's robustness and uncover unexpected behavior.
* **Adversarial Prompt Engineering:** Craft carefully designed prompts to exploit weaknesses in the LLM's logic or safety mechanisms.
* **Custom Test Suites:** Develop custom test suites tailored to the specific use cases and requirements of your LLM.

**8. Stay Updated**

* **Check for Updates:** Regularly check the Garak GitHub repository for new releases, bug fixes, and feature updates.
* **Follow the Documentation:** Stay informed about the latest changes and best practices by reviewing the official Garak documentation.

**Additional Tips**

* **Start with a Small Scope:** Begin with a limited set of tests and gradually increase the complexity and scope of your scans.
* **Use a Controlled Environment:** Conduct scans in a controlled environment to minimize the risk of unintended consequences.
* **Be Aware of False Positives:** Garak may sometimes generate false positive results. Manually review the findings to confirm their validity.
* **Use Garak as Part of a Larger Security Strategy:** Integrate Garak into a comprehensive security program that includes regular security audits, vulnerability assessments, and ongoing monitoring.

By following these steps and continuously learning and adapting your approach, you can effectively use Garak to identify and mitigate vulnerabilities in your LLMs.

