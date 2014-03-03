#!/usr/sbin/dtrace -qs
/*
 * print_time.d
 *
 * Introduction:
 * This script shows how to display current time.
 *
 * Usage:
 * ./print_time.d
 */

BEGIN
{
    printf("Now, the time is [%Y], and it is [%d] nanoseconds since 00:00 UTC, January 1, 1970\n", walltimestamp, walltimestamp);
    exit(0);
}
