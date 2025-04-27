# Retrieval Augmented Generation (RAG) using Intel® Gaudi®

# openvino_ai__2025__index

ref: https://docs.openvino.ai/2025/index.html

**OpenVINO** is an open-source toolkit for deploying performant AI solutions in the cloud, on-prem, and on the edge alike. 

- Develop your applications with both generative and conventional AI models, coming from the most popular model frameworks. 
- Convert, optimize, and run inference utilizing the full potential of Intel® hardware. 

There are three main tools in OpenVINO to meet all your deployment needs:  

    OpenVINO GenAI              Run and deploy generative AI models                                 https://docs.openvino.ai/2025/openvino-workflow-generative.html  
    OpenVINO Base Package       Run and deploy conventional AI models                               https://docs.openvino.ai/2025/openvino-workflow.html  
    OpenVINO Model Server       Deploy both generative and conventional AI inference on a server    https://docs.openvino.ai/2025/model-server/ovms_what_is_openvino_model_server.html  


For a quick ramp-up, check out the  
    OpenVINO Toolkit Cheat Sheet [PDF]          https://docs.openvino.ai/2025/_static/download/OpenVINO_Quick_Start_Guide.pdf      
    OpenVINO GenAI Quick-start Guide [PDF]      https://docs.openvino.ai/2025/_static/download/GenAI_Quick_Start_Guide.pdf  
    
HW (Optimized performance):   
    CPU: intel ATOM, intel CORE, intel CORE ULTRA, intel XEON, arm  
    GPU: intel iRIS Xe MAX, intel ARC, intel Data Center GPU  
    NPU: intel CORE ULTRA   
    FPGA: intel FPGA AI Suite  
     
    
OS: Windows11, Linux, macOS   

AI Frameworks:   
    PyTorch   
    TensorFlow   
    TensorFlow Lite   
    PaddlePaddle   
    ONNX   
    Keras   
    JAX  

## Where to Begin  

Installation:               This guide introduces installation and learning materials for Intel® Distribution of OpenVINO™ toolkit.  
                            [Get Started](https://docs.openvino.ai/2025/get-started/install-openvino.html)  

Performance Benchmarks:     See latest benchmark numbers for OpenVINO and OpenVINO Model Server.  
                            [View data](https://docs.openvino.ai/2025/about-openvino/performance-benchmarks.html)  

Framework Compatibility     Load models directly (for TensorFlow, ONNX, PaddlePaddle) or convert to OpenVINO format.  
                            [Load your model](https://docs.openvino.ai/2025/openvino-workflow/model-preparation.html)  

Easy Deployment             Get started in just a few lines of code.  
                            [Run Inference](https://docs.openvino.ai/2025/openvino-workflow/running-inference.html)  
                            
Serving at scale            Cloud-ready deployments for microservice applications.  
                            [Check out Model Server](https://docs.openvino.ai/2025/model-server/ovms_what_is_openvino_model_server.html)  

Model Compression           Reach for performance with post-training and training-time compression with NNCF.  
                            [Optimize Now](https://docs.openvino.ai/2025/openvino-workflow/model-optimization.html)  

## Next Steps 
=============
https://docs.openvino.ai/2025/index.html

1. Simplify GenAI model deployment 

   https://docs.openvino.ai/2025/openvino-workflow-generative/inference-with-genai.html
   ![**Inference with OpenVINO GenAI**](https://docs.openvino.ai/2025/_images/genai_main_diagram.svg) 

2 Get pre-optimized OpenVINO models, on Hugging Face, no need to convert!

   https://huggingface.co/OpenVINO 

3 OpenVINO Model Hub --    See performance benchmark for top AI models 
  https://www.intel.com/content/www/us/en/developer/tools/openvino-toolkit/model-hub.html
  
  
4 OpenVINO via PyTorch 2.0 torch.compile()  -- Use OpenViNO directly in PyTorch-native applications!
  https://docs.openvino.ai/2025/openvino-workflow/torch-compile.html 


## 1. Simplify GenAI model deployment 
=====================================

   [step-by-step chat-bot guide](https://docs.openvino.ai/2025/openvino-workflow-generative/inference-with-genai.html#chat-bot-use-case-step-by-step)

    1 Text-to-Image Generation                    
    
    2 Speech Recognition
    
    3 Using GenAI in Chat Scenario 
    
    4 Using GenAI with Vision Language Models 
    
   
###    1 Text-to-Image Generation                    

https://github.com/openvinotoolkit/openvino.genai/tree/master/samples/ 
https://github.com/openvinotoolkit/openvino.genai/tree/master/samples/python/image_generation

There are several sample files:
```txt 
text2image.py                       demonstrates basic usage of the text to image pipeline
lora_text2image.py                  shows how to apply LoRA adapters to the pipeline

heterogeneous_stable_diffusion.py   shows how to assemble a heterogeneous text2image pipeline from individual subcomponents (scheduler, text encoder, unet, vae decoder)
image2image.py                      demonstrates basic usage of the image to image pipeline

inpainting.py                       demonstrates basic usage of the inpainting pipeline

benchmark_image_gen.py              demonstrates how to benchmark the text to image / image to image / inpainting pipeline
```

## Optimum OpenVINO Notebooks

https://github.com/huggingface/optimum-intel/tree/main/notebooks/openvino  
-- tested with Python 3.8 and 3.10 on Ubuntu Linux.
```txt 
1 How to run inference with the OpenVINO	
2 How to quantize a question answering model with OpenVINO NNCF	
3 How to quantize Stable Diffusion model with OpenVINO NNCF	
4 How to quantize Sentence Transformer model with OpenVINO NNCF

    1 Explains how to export your model to OpenVINO and to run inference with OpenVINO Runtime on various tasks	Open in Colab	Open in AWS Studio
    2 Show how to apply post-training quantization on a question answering model using NNCF and to accelerate inference with OpenVINO	Open in Colab	Open in AWS Studio
    3 Show how to apply post-training hybrid quantization on a Stable Diffusion model using NNCF and to accelerate inference with OpenVINO	Open in Colab	Open in AWS Studio
    4 Show how to apply post-training 8-bit quantization on a Sentence Transformer model using NNCF and to accelerate inference with OpenVINO
```

       
## 2 Get pre-optimized OpenVINO models, on Hugging Face, no need to convert!
============================================================================

   https://huggingface.co/OpenVINO 
   
   5 Collections  
            LLMs (OpenVINO optimized):  phi-2 (fp16-ov, int8-ov), mistral-7b-instruct-v0.1 (int4-ov, int8-ov, fp16-ov), codegen-2B-multi(3),codegen-6B-multi(3), 
                                        Phi-4-mini-instruct, Qwen2-0.5B-Instruct(3),  
                                                             Qwen2-1.5B-Instruct(3),
                                                             Qwen2-7B-Instruct(3),


                                                             OpenVINO/DeepSeek-R1-Distill-Qwen-1.5B(3)
                                                             OpenVINO/DeepSeek-R1-Distill-Qwen-14B(3)

            Visual Language Models      OpenVINO/Phi-3.5-vision-instruct(3), OpenVINO/InternVL2-2B(3) 

            Image Generation            
                                        OpenVINO/stable-diffusion-v1-5-(int8/fp16-ov)            
                                        OpenVINO/FLUX.1-schnell(3)      
                                        OpenVINO/LCM_Dreamshaper_v7(int8/fp16-ov)
   

            Speech-to-Text              whisper-(base, tiny, medium, large)(3), distil-whisper-(base, tiny, medium, large)(3)
            

            Speculative Decoding Draft Models
             
   3 Spaces      
   
            OpenVINO Export             (Convert HF models to OpenVINO format)
            NNCF Quantization           (Quantize a model for faster inference)           
            OpenVINO Hello World Demo   (Identify objects in images)

    216 Models 
    
    1 Datasets
    

### Optimum Intel - NNCF Quantization - Quantize a model for faster inference
[**Optimum Intel**](https://github.com/huggingface/optimum-intel) 🤗 Optimum Intel is the interface between the 🤗 Transformers and Diffusers libraries and the different tools and libraries provided by Intel to accelerate end-to-end pipelines on Intel architectures.
https://github.com/huggingface/optimum-intel

    Intel Neural Compressor	        `pip install --upgrade --upgrade-strategy eager "optimum[neural-compressor]"`
    OpenVINO	                    `pip install --upgrade --upgrade-strategy eager "optimum[openvino]"`
    Intel Extension for PyTorch	    `pip install --upgrade --upgrade-strategy eager "optimum[ipex]"`

Install from source including dependencies (where extras can be one or more of ipex, neural-compressor, openvino, nncf)  
```sh
python -m pip install "optimum-intel[extras]"@git+https://github.com/huggingface/optimum-intel.git
```    

Quick tour:  

Dynamic quantization can be used through the Optimum command-line interface:
```sh
optimum-cli inc quantize --model distilbert-base-cased-distilled-squad --output ./quantized_distilbert
```
Note that quantization is currently only supported for CPUs (only CPU backends are available), so we will not be utilizing GPUs / CUDA in this example.

To load a quantized model hosted locally or on the 🤗 hub, you can do as follows :
```python
from optimum.intel import INCModelForSequenceClassification

model_id = "Intel/distilbert-base-uncased-finetuned-sst-2-english-int8-dynamic"
model = INCModelForSequenceClassification.from_pretrained(model_id)
```

Examples of how to use OpenVINO and its **NNCF framework** to accelerate inference

**Training-Time Compression Methods** 
https://docs.openvino.ai/2024/openvino-workflow/model-optimization-guide/compressing-models-during-training.html

Quantization
- Uniform 8-bit quantization, the method officially supported by NNCF, converts all weights and activation values in a model from a high-precision format, such as 32-bit floating point, to a lower-precision format, such as 8-bit integer. 
- During training, it inserts into the model nodes that simulate the effect of a lower precision. This way, the training algorithm considers quantization errors part of the overall training loss and tries to minimize their impact.

Filter pruning: 
- During fine-tuning, the importance criterion is used to search for redundant convolutional layer filters that don’t significantly contribute to the model’s output.
- After fine-tuning, these filters are removed from the model.


It is also possible to export your model to the **OpenVINO IR** format with the CLI :
```sh 
optimum-cli export openvino --model gpt2 ov_model
```

You can also apply **8-bit weight-only** quantization when exporting your model : the model linear, embedding and convolution weights will be quantized to INT8, the activations will be kept in floating point precision.

```sh 
optimum-cli export openvino --model gpt2 --weight-format int8 ov_model
```

Quantization in hybrid mode can be applied to Stable Diffusion pipeline during model export. This involves applying **hybrid post-training quantization** to the UNet model and weight-only quantization for the rest of the pipeline components. In the hybrid mode, weights in MatMul and Embedding layers are quantized, as well as activations of other layers.

```sh
optimum-cli export openvino --model stabilityai/stable-diffusion-2-1 --dataset conceptual_captions --weight-format int8 ov_model
```

Inference:
To load a model and run inference with OpenVINO Runtime, you can just replace your AutoModelForXxx class with the corresponding OVModelForXxx class.
```python 
- from transformers import AutoModelForSeq2SeqLM
+ from optimum.intel import OVModelForSeq2SeqLM
  from transformers import AutoTokenizer, pipeline

  model_id = "echarlaix/t5-small-openvino"
- model = AutoModelForSeq2SeqLM.from_pretrained(model_id)
+ model = OVModelForSeq2SeqLM.from_pretrained(model_id)
  tokenizer = AutoTokenizer.from_pretrained(model_id)
  pipe = pipeline("translation_en_to_fr", model=model, tokenizer=tokenizer)
  results = pipe("He never went out without a book under his arm, and he often came back with two.")

  [{'translation_text': "Il n'est jamais sorti sans un livre sous son bras, et il est souvent revenu avec deux."}]
```  

        
## Tech detail 
============== 

### neural-compressor
https://github.com/intel/neural-compressor

### IPEX -- Intel® Extension for PyTorch*
https://github.com/intel/intel-extension-for-pytorch


