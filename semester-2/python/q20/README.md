---
title: "練習一下 Q20.py"
course: "S2 - Intermediate Python Programming"
---

假設 `Animal` 是一個父類別，他有 `sound()` 和 `food()` 兩個方法，另外有 `Dog` 和 `Cat` 兩個子類別，這兩個子類別繼承了父類別的方法。

不過，由於狗和貓的叫聲與愛吃的食物不同，因此，我們必須在 **子類別** 內覆蓋這兩個方法，屆時只要物件收到愛吃的食物，或是叫聲的訊息，就會是物件所隸屬的子類別呼叫對應的方法來作處理。

請根據題意使用繼承的方式實作多型。
