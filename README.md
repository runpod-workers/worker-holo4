# Holo4-35B-A3B on Runpod Serverless

[![Runpod](https://api.runpod.io/badge/runpod-workers/worker-holo4)](https://console.runpod.io/hub/runpod-workers/worker-holo4)

Serve Holo4-35B-A3B (H Company) on Runpod Serverless with vLLM.
License: apache-2.0.

## Recipe

| Setting | Value |
|---|---|
| Engine | vllm |
| Image | this repo's `Dockerfile`, on `vllm/vllm-openai:v0.29.0` |
| GPU | 1x RTX 6000 Ada |
| Precision | fp8 |
| Max model length | 8192 |

## Environment

| Variable | Value |
|---|---|
| `GPU_MEMORY_UTILIZATION` | `0.90` |
| `MAX_CONCURRENCY` | `30` |
| `MAX_MODEL_LEN` | `8192` |
| `MAX_NUM_SEQS` | `32` |
| `MODEL_NAME` | `Hcompany/Holo4-35B-A3B` |
| `QUANTIZATION` | `fp8` |
| `TENSOR_PARALLEL_SIZE` | `1` |

## Measured performance and cost

| GPU | $/hr | Startup s | TTFT ms | tok/s | $/1M output tokens |
|---|---|---|---|---|---|
| 1x RTX 6000 Ada fp8 | $0.84 | 362.6 | 351.9 | 123.7 | $1.89 |

Cost per 1M output tokens is the hourly rate divided by measured throughput. It
assumes one saturated worker and no idle time, so treat it as a floor. Measured by Launch
Builder on `runpod/worker-v1-vllm:v2.27.0` with the same model, GPU, precision and context
length; this worker runs vLLM v0.29.0.

## Deploy links

- Deploy on Runpod: https://console.runpod.io/hub/runpod-workers/worker-holo4?utm_source=hub&utm_medium=product&utm_campaign=202609_activation_ml-engineer_h-company-holo4-holo4-27b-gguf-holo4-35b-a3b-gguf&utm_content=readme

The link carries `utm_campaign=202609_activation_ml-engineer_h-company-holo4-holo4-27b-gguf-holo4-35b-a3b-gguf`. Keep it intact when you copy a link anywhere else.
