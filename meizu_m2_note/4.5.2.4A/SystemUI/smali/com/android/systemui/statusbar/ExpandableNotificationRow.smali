.class public Lcom/android/systemui/statusbar/ExpandableNotificationRow;
.super Landroid/widget/LinearLayout;
.source "ExpandableNotificationRow.java"


# instance fields
.field private mExpandable:Z

.field private mIsSystemNotification:Z

.field private mLastOrientation:I

.field private mRowHeight:I

.field private mSystemExpanded:Z

.field private mUserExpanded:Z

.field private mUserLocked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLastOrientation:I

    .line 45
    return-void
.end method

.method private adjustLayout()V
    .locals 5

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 125
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 126
    .local v1, "width":I
    const v3, 0x7f0e0168

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, "contentWrapper":Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    return-void
.end method


# virtual methods
.method public isExpandable()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    return v0
.end method

.method public isSystemExpanded()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSystemExpanded:Z

    return v0
.end method

.method public isSystemNotification()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemNotification:Z

    return v0
.end method

.method public isUserExpanded()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 56
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->adjustLayout()V

    .line 58
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLastOrientation:I

    .line 60
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->adjustLayout()V

    .line 50
    return-void
.end method

.method public setExpandable(Z)V
    .locals 0
    .param p1, "expandable"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    .line 84
    return-void
.end method

.method public setExpanded(Z)V
    .locals 2
    .param p1, "expand"    # Z

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 112
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    if-eqz v1, :cond_0

    .line 113
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemExpanded(Z)V

    .line 119
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    return-void

    .line 116
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 117
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemExpanded(Z)V

    goto :goto_0
.end method

.method public setIsSystemNotification(Z)V
    .locals 0
    .param p1, "systemNotification"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemNotification:Z

    .line 68
    return-void
.end method

.method public setRowHeight(I)V
    .locals 0
    .param p1, "rowHeight"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowHeight:I

    .line 76
    return-void
.end method

.method public setSystemExpanded(Z)V
    .locals 0
    .param p1, "systemExpanded"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSystemExpanded:Z

    .line 100
    return-void
.end method

.method public setUserExpanded(Z)V
    .locals 0
    .param p1, "userExpanded"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    .line 92
    return-void
.end method

.method public setUserLocked(Z)V
    .locals 0
    .param p1, "userLocked"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    .line 108
    return-void
.end method
