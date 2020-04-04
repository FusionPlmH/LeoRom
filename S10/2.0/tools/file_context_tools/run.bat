@ECHO OFF

: for conversion from binary to plaintext
file_contexts_tool file_contexts.bin -o file_contexts -e

: for convertion from plaintext to binary
file_contexts_tool file_contexts -o file_contexts2.bin

pause
