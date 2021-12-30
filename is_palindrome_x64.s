.global is_palindrome

.section .text

.type is_palindrome, @function
/* rdi char* s */
/* rsi long len */
is_palindrome:
   mov    $0, %eax      /* i */

   mov    %rsi, %rcx
   shr    %rcx          /* len / 2 */

   mov    %rsi, %rdx
   dec    %rdx          /* j = len - 1 */

loop:
  movzbq (%rdi, %rdx), %r8
  cmp    %r8b, (%rdi, %rax)
  jne    not_palindrome

  inc    %rax
  dec    %rdx
  cmp    %rcx, %rax
  jl     loop

  mov    $1, %eax
  retq

not_palindrome:
  mov    $0, %eax
  retq
