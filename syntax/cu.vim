" Vim syntax file
" Language:     CUDA
" Maintainer:   Unknown
" Last Change:  Unknown

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Start by reading in the C++ syntax
if version < 600
  so <sfile>:p:h/cpp.vim
else
  runtime! syntax/cpp.vim
  unlet b:current_syntax
endif

" CUDA keywords
syn keyword     cudaType           __global__ __host__ __device__
syn keyword     cudaType           __constant__ __shared__
syn keyword     cudaType           dim1 dim2 dim3 dim4
syn keyword     cudaType           int1 int2 int3 int4
syn keyword     cudaType           uint1 uint2 uint3 uint4
syn keyword     cudaType           float1 float2 float3 float4
syn keyword     cudaType           char1 char2 char3 char4
syn keyword     cudaType           uchar1 uchar2 uchar3 uchar4
syn keyword     cudaType           short1 short2 short3 short4
syn keyword     cudaType           int2float float2int
syn match       cudaString         "blockIdx\.[xy]"
syn match       cudaString         "blockDim\.[xy]"
syn match       cudaString         "GridDim\.[xy]"
syn match       cudaString         "threadIdx\.[xyz]"

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_cu_syn_inits")
  if version < 508
    let did_cu_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink cudaType               Type
  HiLink cudaString             String
  delcommand HiLink
endif

let b:current_syntax = "cu"

" vim: ts=8
