# CodeBase Splunk Correlator

logexport_code_correlator: A tool to correlate and find which log lines in your codebase is contributing to high log size in Splunk

## Problem Statement

![image](https://user-images.githubusercontent.com/15380498/201457219-4af6122f-c51e-4731-aaaf-29074343d702.png)

## Workflow

![image](https://user-images.githubusercontent.com/15380498/201457321-e6afebeb-4ff1-42fe-b4e0-f8af18a61eb7.png)
Threshold Partitioning Search based exploration ( more apt name than "modified binary search" )

# Time Complexity Analysis
- Batch Analysis:
  You start with a batch of k log lines.
  - If the batch is below the threshold, the operation takes O(1) time to process the batch.
  - If the batch is above the threshold, you split the batch and analyze smaller segments, recursively applying the same logic.

- Recursive Splitting (Binary Search Behavior):
  - In the worst case, each batch of size k could be split down to individual log lines. This behaves like a binary search in that each recursive step reduces the size of the problem by approximately half.
  - However, the main difference is that you don't exactly perform a binary search on a sorted array; instead, you recursively split the batch into smaller pieces until each piece is manageable.
  - The number of splits required to get from k to 1 is log(k).

- Sequential Analysis for Remaining Logs:
  - Once a batch is split into individual log lines, you may process each line sequentially in the worst case. This takes O(k) time, where k is the number of log lines.

## Overall Time Complexity:

The time complexity is a combination of the recursive splitting and the sequential analysis of log lines.

In the worst case, where every log line needs to be analyzed individually, the complexity is:

𝑇(𝑛) = 𝑂(𝑛.log(𝑛)))
Where n is the total number of log lines. The O(n log n) term arises because for each of the log n levels of recursion, you potentially analyze n log lines.
