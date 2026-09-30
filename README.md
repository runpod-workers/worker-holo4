# Holo4 (Holo4-27B-GGUF, Holo4-35B-A3B-GGUF) on Runpod Serverless

Serve Holo4 (Holo4-27B-GGUF, Holo4-35B-A3B-GGUF) (H Company) on Runpod Serverless with vLLM.
License: apache-2.0.

## Recipe

| Setting | Value |
|---|---|
| Engine | vllm |
| Image | `runpod/worker-v1-vllm:v2.27.0` |
| GPU | 1x RTX 6000 Ada |
| Precision | fp8 |
| Max model length | 8192 |

## Environment

| Variable | Value |
|---|---|
| `GPU_MEMORY_UTILIZATION` | `0.90` |
| `MAX_CONCURRENCY` | `30` |
| `MAX_MODEL_LEN` | `8192` |
| `MODEL_NAME` | `Hcompany/Holo4-35B-A3B` |
| `QUANTIZATION` | `fp8` |
| `TENSOR_PARALLEL_SIZE` | `1` |

## Measured performance and cost

| GPU | $/hr | Startup s | TTFT ms | tok/s | $/1M output tokens |
|---|---|---|---|---|---|
| 1x RTX 6000 Ada fp8 | $0.84 | 362.6 | 351.9 | 123.7 | $1.89 |

Cost per 1M output tokens is the hourly rate divided by measured throughput. It
assumes one saturated worker and no idle time, so treat it as a floor.

## Deploy links

- Deploy on Runpod: https://console.runpod.io/deploy?template=yye0eu6dtk&utm_source=hub&utm_medium=product&utm_campaign=202609_activation_ml-engineer_h-company-holo4-holo4-27b-gguf-holo4-35b-a3b-gguf&utm_content=readme
- Model page: https://www.runpod.io/models/h-company-holo4-holo4-27b-gguf-holo4-35b-a3b-gguf?utm_source=hub&utm_medium=product&utm_campaign=202609_activation_ml-engineer_h-company-holo4-holo4-27b-gguf-holo4-35b-a3b-gguf&utm_content=readme
- Docs: https://docs.runpod.io/public-endpoints/models/h-company-holo4-holo4-27b-gguf-holo4-35b-a3b-gguf?utm_source=hub&utm_medium=product&utm_campaign=202609_activation_ml-engineer_h-company-holo4-holo4-27b-gguf-holo4-35b-a3b-gguf&utm_content=readme

Every link carries `utm_campaign=202609_activation_ml-engineer_h-company-holo4-holo4-27b-gguf-holo4-35b-a3b-gguf`. Keep it intact when you copy a link anywhere else.

## Before merging this bundle

Run the suite against a live endpoint:

```bash
node hub-test-suite.mjs --repo <owner>/<name> --prefix h-company-holo4-holo4-27b-gguf-holo4-35b-a3b-gguf- --create
```

## Fast path while this is in review

```bash
runpodctl serverless create --hub-id <vllm listing> --model-reference hf://Hcompany/Holo4-35B-A3B
```
