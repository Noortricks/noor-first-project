import csv
import os

FILE = "videos.csv"
FIELDS = ["title", "link", "views", "likes", "followers_gained"]


def add_video():
    title = input("Video title: ")
    link = input("Video link: ")
    views = int(input("Views: "))
    likes = int(input("Likes: "))
    followers = int(input("Followers gained: "))
    new_file = not os.path.exists(FILE)
    with open(FILE, "a", newline="") as f:
        writer = csv.writer(f)
        if new_file:
            writer.writerow(FIELDS)
        writer.writerow([title, link, views, likes, followers])
    print("Saved!\n")


def show_report():
    if not os.path.exists(FILE):
        print("No videos yet.\n")
        return
    with open(FILE) as f:
        rows = list(csv.DictReader(f))
    for r in rows:
        for k in FIELDS[1:]:
            r[k] = int(r[k])
    best = max(rows, key=lambda r: r["followers_gained"])
    print(f"\nVideos: {len(rows)}")
    print(f"Total views: {sum(r['views'] for r in rows)}")
    print(f"Total followers gained: {sum(r['followers_gained'] for r in rows)}")
    print(f"Best video: {best['title']} (+{best['followers_gained']} followers)")
    print(f"Link: {best['link']}\n")


while True:
    choice = input("1) Add video  2) Report  3) Quit: ")
    if choice == "1":
        add_video()
    elif choice == "2":
        show_report()
    elif choice == "3":
        break
