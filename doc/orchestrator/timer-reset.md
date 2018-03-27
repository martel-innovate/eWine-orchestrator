## 9. Timer Reset

![timer reset](img/timer-reset.png)

When the [*distance* function node](wifi-close.md) executes, if a timer expired or the device is not close to any Wi-Fi network, then the timer must be reset (resetting an unset timer has no effect).

The function node (*reset timer*) clears the timer, if set, otherwise does nothing.

After resetting the timer, the flows [reads batches of data](batch-read.md) from memory, prior to sending them out.