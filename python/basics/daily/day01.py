#!/usr/bin/env python3
# Day 1 - 2025-09-17
# Topic:
# Learning Goal:

"""
Day 01: Data Structures - WHY Python has different containers
=============================================================
Let's visualize how different structures handle your network routes!
Run chunks with Space+sv in vim to see the magic happen.
"""

import time
from collections import deque
import random

# Terminal colors for visual learning
RED = "\033[91m"
GREEN = "\033[92m"
YELLOW = "\033[93m"
BLUE = "\033[94m"
MAGENTA = "\033[95m"
CYAN = "\033[96m"
WHITE = "\033[97m"
RESET = "\033[0m"
BOLD = "\033[1m"

print(f"{CYAN}{BOLD}=== Day 01: Data Structures Deep Dive ==={RESET}\n")

# Let's use your actual network routes as our data!
routes = [
    "10.1.0.0/25",
    "10.1.0.128/26",
    "10.1.1.0/27",
    "10.1.4.0/22",
    "10.1.20.0/24",
]

# ============================================================
# PART 1: LIST vs SET - Finding duplicates
# ============================================================
print(f"{YELLOW}{BOLD}1. LIST vs SET - WHY sets exist:{RESET}")
print(f"{WHITE}Finding if a route exists in your collection...{RESET}\n")

# Create a list with some duplicates
route_list = routes * 200  # 1000 routes total
route_set = set(route_list)  # Same data, but as a set

search_route = "10.1.20.0/24"

# Time the LIST search
start = time.perf_counter()
for _ in range(10000):
    found = search_route in route_list  # Has to check EVERY item until found
list_time = time.perf_counter() - start

# Time the SET search
start = time.perf_counter()
for _ in range(10000):
    found = search_route in route_set  # Hash table - instant lookup!
set_time = time.perf_counter() - start

# Visual comparison
print(f"  {RED}LIST search (checking each item):{RESET}")
print(f"  {'█' * int(list_time * 10)} {list_time:.4f} seconds")
print(f"  {GREEN}SET search (hash lookup):{RESET}")
print(f"  {'█' * max(1, int(set_time * 10))} {set_time:.4f} seconds")
print(f"  {BOLD}Set is {list_time / set_time:.0f}x faster!{RESET}\n")

print(f"  {CYAN}WHY?{RESET} Sets use hash tables - like having an index in a book")
print(f"  instead of reading every page!\n")

# ============================================================
# PART 2: LIST vs DEQUE - Adding/removing from ends
# ============================================================
print(f"{YELLOW}{BOLD}2. LIST vs DEQUE - WHY deque exists:{RESET}")
print(f"{WHITE}Simulating a route processing queue...{RESET}\n")

# Regular list
route_list = list(routes * 100)
start = time.perf_counter()
for _ in range(1000):
    route_list.insert(0, "10.0.0.0/8")  # Add to front - EXPENSIVE!
    route_list.pop(0)  # Remove from front - EXPENSIVE!
list_queue_time = time.perf_counter() - start

# Deque (double-ended queue)
route_deque = deque(routes * 100)
start = time.perf_counter()
for _ in range(1000):
    route_deque.appendleft("10.0.0.0/8")  # Add to front - CHEAP!
    route_deque.popleft()  # Remove from front - CHEAP!
deque_time = time.perf_counter() - start

print(f"  {RED}LIST (moving all items):{RESET}")
print(f"  {'█' * int(list_queue_time * 100)} {list_queue_time:.4f} seconds")
print(f"  {GREEN}DEQUE (designed for this):{RESET}")
print(f"  {'█' * max(1, int(deque_time * 100))} {deque_time:.4f} seconds")
print(f"  {BOLD}Deque is {list_queue_time / deque_time:.0f}x faster!{RESET}\n")

print(f"  {CYAN}WHY?{RESET} Lists have to shift ALL items when you insert at front.")
print(f"  Deques have pointers at both ends - no shifting needed!\n")

# ============================================================
# PART 3: DICT - When you need relationships
# ============================================================
print(f"{YELLOW}{BOLD}3. DICT - WHY dictionaries are everywhere:{RESET}")
print(f"{WHITE}Organizing routes by network purpose...{RESET}\n")

# Your routes as a list - no context
route_list = ["10.1.0.0/25", "10.1.20.0/24", "10.2.0.0/25"]

# Same routes as a dict - WITH context!
route_dict = {
    "10.1.0.0/25": {"name": "Management", "vlan": 100, "critical": True},
    "10.1.20.0/24": {"name": "Guest WiFi", "vlan": 20, "critical": False},
    "10.2.0.0/25": {"name": "Servers", "vlan": 200, "critical": True},
}

print(f"  {RED}List only tells you WHAT:{RESET}")
for route in route_list[:2]:
    print(f"    • {route}")

print(f"\n  {GREEN}Dict tells you WHAT + WHY + HOW:{RESET}")
for route, info in list(route_dict.items())[:2]:
    status = "⚠️  CRITICAL" if info["critical"] else "📶 Normal"
    print(f"    • {route} → {info['name']} (VLAN {info['vlan']}) {status}")

print(f"\n  {CYAN}WHY?{RESET} Real data has relationships. Dicts model reality!\n")

# ============================================================
# PART 4: The RIGHT tool for the RIGHT job
# ============================================================
print(f"{YELLOW}{BOLD}4. Memory & Performance Visualization:{RESET}\n")

import sys

# Show memory usage
structures = {
    "List": routes,
    "Set": set(routes),
    "Dict": {r: True for r in routes},
    "Tuple": tuple(routes),
}

for name, struct in structures.items():
    size = sys.getsizeof(struct)
    bar = "█" * (size // 20)
    print(f"  {name:8} {bar} {size} bytes")

# ============================================================
# PART 5: Quick Reference - When to use what?
# ============================================================
print(f"\n{CYAN}{BOLD}🎯 WHEN TO USE EACH STRUCTURE:{RESET}\n")

guide = """
  📝 LIST:  Ordered items, need index access, will modify
           Example: routes = ["10.1.0.0/24", "10.2.0.0/24"]
           
  🔍 SET:   Unique items only, fast membership testing
           Example: unique_routes = set(all_routes)
           
  🗂️  DICT:  Key→Value mapping, need to look things up
           Example: route_info = {"10.1.0.0/24": "Management"}
           
  🔒 TUPLE: Immutable list, won't change, slightly faster
           Example: DNS_SERVERS = ("8.8.8.8", "8.8.4.4")
           
  🔄 DEQUE: Queue/stack operations, adding/removing ends
           Example: packet_queue = deque(maxlen=1000)
"""
print(guide)

# ============================================================
# BONUS: Interactive playground
# ============================================================
print(f"{MAGENTA}{BOLD}🎮 TRY THIS IN IPYTHON:{RESET}")
print("""
# See the difference yourself:
big_list = list(range(100000))
big_set = set(range(100000))

# Time this:
%timeit 99999 in big_list  # Slow!
%timeit 99999 in big_set   # Fast!

# Watch memory:
import sys
sys.getsizeof(big_list)
sys.getsizeof(big_set)
""")
