.class public Lcom/android/systemui/statusbar/LatestItemView;
.super Landroid/widget/FrameLayout;
.source "LatestItemView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 41
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/LatestItemView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/LatestItemView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 43
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 44
    const/4 v1, 0x1

    .line 46
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method
