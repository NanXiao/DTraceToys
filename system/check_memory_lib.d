#!/usr/sbin/dtrace -qs
/*
 * check_memory_lib.d
 *
 * Introduction:
 * Sometimes, we will use third-party memory libraries (such as libumem, efence ......) to replace
 * the malloc, free ...... (in libc), so this script checks which memory library the application uses.
 *
 * Usage:
 * ./check_memory_lib.d process_id
 */

pid$1::malloc:entry
{
    printf("The memory library is %s\n", probemod);
    ustack();
    exit(0);
}



