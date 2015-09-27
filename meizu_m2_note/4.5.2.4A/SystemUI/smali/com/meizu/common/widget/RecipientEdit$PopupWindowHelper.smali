.class Lcom/meizu/common/widget/RecipientEdit$PopupWindowHelper;
.super Ljava/lang/Object;
.source "RecipientEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PopupWindowHelper"
.end annotation


# direct methods
.method public static getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 2539
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2540
    .local v2, "instance":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 2541
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2542
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2547
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "instance":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v3

    .line 2543
    :catch_0
    move-exception v0

    .line 2544
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2547
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getPopup(Landroid/widget/AutoCompleteTextView;)Landroid/widget/ListPopupWindow;
    .locals 2
    .param p0, "autoCompleteTextView"    # Landroid/widget/AutoCompleteTextView;

    .prologue
    .line 2552
    const-string v0, "android.widget.AutoCompleteTextView"

    const-string v1, "mPopup"

    invoke-static {p0, v0, v1}, Lcom/meizu/common/widget/RecipientEdit$PopupWindowHelper;->getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method public static getPopupView(Landroid/widget/PopupWindow;)Landroid/view/View;
    .locals 2
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 2562
    const-string v0, "android.widget.PopupWindow"

    const-string v1, "mPopupView"

    invoke-static {p0, v0, v1}, Lcom/meizu/common/widget/RecipientEdit$PopupWindowHelper;->getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static getPopupWindow(Landroid/widget/ListPopupWindow;)Landroid/widget/PopupWindow;
    .locals 2
    .param p0, "listPopupWindow"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 2557
    const-string v0, "android.widget.ListPopupWindow"

    const-string v1, "mPopup"

    invoke-static {p0, v0, v1}, Lcom/meizu/common/widget/RecipientEdit$PopupWindowHelper;->getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/PopupWindow;

    return-object v0
.end method
