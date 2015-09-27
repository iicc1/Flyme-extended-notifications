.class public Lcom/android/systemui/statusbar/phone/DemoStatusIcons;
.super Landroid/widget/LinearLayout;
.source "DemoStatusIcons.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# instance fields
.field private mDemoMode:Z

.field private final mIconSize:I

.field private final mStatusIcons:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;I)V
    .locals 2
    .param p1, "statusIcons"    # Landroid/widget/LinearLayout;
    .param p2, "iconSize"    # I

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 41
    iput p2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    .line 43
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setOrientation(I)V

    .line 45
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setGravity(I)V

    .line 46
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 47
    .local v0, "p":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 48
    return-void
.end method

.method private updateSlot(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconPkg"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    .prologue
    const/4 v4, 0x0

    .line 121
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-nez v1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 122
    :cond_0
    const/4 v8, -0x1

    .line 123
    .local v8, "removeIndex":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildCount()I

    move-result v1

    if-ge v7, v1, :cond_1

    .line 124
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 125
    .local v9, "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    if-nez p3, :cond_2

    .line 127
    move v8, v7

    .line 139
    .end local v9    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_1
    if-nez p3, :cond_4

    .line 140
    const/4 v1, -0x1

    if-eq v8, v1, :cond_4

    .line 141
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->removeViewAt(I)V

    goto :goto_0

    .line 130
    .restart local v9    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_2
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    .line 131
    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    iput-object p2, v0, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    .line 132
    iput p3, v0, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    .line 133
    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 134
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    goto :goto_0

    .line 123
    .end local v0    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 145
    .end local v9    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_4
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v6, "Demo"

    move-object v1, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 146
    .restart local v0    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    new-instance v9, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 147
    .restart local v9    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v9, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(Ljava/lang/Object;)V

    .line 148
    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 149
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v9, v4, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 52
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-nez v10, :cond_1

    const-string v10, "enter"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 53
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    .line 54
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 55
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setVisibility(I)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-eqz v10, :cond_2

    const-string v10, "exit"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 57
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    .line 58
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 59
    const/16 v10, 0x8

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setVisibility(I)V

    goto :goto_0

    .line 60
    :cond_2
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-eqz v10, :cond_0

    const-string v10, "status"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 61
    const-string v10, "volume"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 62
    .local v9, "volume":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 63
    const-string v10, "silent"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const v3, 0x7f0203d8

    .line 66
    .local v3, "iconId":I
    :goto_1
    const-string v10, "volume"

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11, v3}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    .end local v3    # "iconId":I
    :cond_3
    const-string v10, "bluetooth"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "bt":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 70
    const-string v10, "disconnected"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const v3, 0x7f020384

    .line 73
    .restart local v3    # "iconId":I
    :goto_2
    const-string v10, "bluetooth"

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11, v3}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    .end local v3    # "iconId":I
    :cond_4
    const-string v10, "location"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "location":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 77
    const-string v10, "show"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    const v3, 0x7f0203b6

    .line 79
    .restart local v3    # "iconId":I
    :goto_3
    const-string v10, "location"

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11, v3}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    .end local v3    # "iconId":I
    :cond_5
    const-string v10, "alarm"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "alarm":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 83
    const-string v10, "show"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const v3, 0x7f020370

    .line 85
    .restart local v3    # "iconId":I
    :goto_4
    const-string v10, "alarm_clock"

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11, v3}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    .end local v3    # "iconId":I
    :cond_6
    const-string v10, "sync"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 88
    .local v7, "sync":Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 89
    const-string v10, "show"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    const v3, 0x7f0203fc

    .line 91
    .restart local v3    # "iconId":I
    :goto_5
    const-string v10, "sync_active"

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11, v3}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    .end local v3    # "iconId":I
    :cond_7
    const-string v10, "tty"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, "tty":Ljava/lang/String;
    if-eqz v8, :cond_8

    .line 95
    const-string v10, "show"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    const v3, 0x7f0203ff

    .line 97
    .restart local v3    # "iconId":I
    :goto_6
    const-string v10, "tty"

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11, v3}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    .end local v3    # "iconId":I
    :cond_8
    const-string v10, "eri"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "eri":Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 101
    const-string v10, "show"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    const v3, 0x7f0203da

    .line 103
    .restart local v3    # "iconId":I
    :goto_7
    const-string v10, "cdma_eri"

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11, v3}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    .end local v3    # "iconId":I
    :cond_9
    const-string v10, "mute"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "mute":Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 107
    const-string v10, "show"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    const v3, 0x1080076

    .line 109
    .restart local v3    # "iconId":I
    :goto_8
    const-string v10, "mute"

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11, v3}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    .end local v3    # "iconId":I
    :cond_a
    const-string v10, "speakerphone"

    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, "speakerphone":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 113
    const-string v10, "show"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    const v3, 0x1080087

    .line 115
    .restart local v3    # "iconId":I
    :goto_9
    const-string v10, "speakerphone"

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11, v3}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 63
    .end local v0    # "alarm":Ljava/lang/String;
    .end local v1    # "bt":Ljava/lang/String;
    .end local v2    # "eri":Ljava/lang/String;
    .end local v3    # "iconId":I
    .end local v4    # "location":Ljava/lang/String;
    .end local v5    # "mute":Ljava/lang/String;
    .end local v6    # "speakerphone":Ljava/lang/String;
    .end local v7    # "sync":Ljava/lang/String;
    .end local v8    # "tty":Ljava/lang/String;
    :cond_b
    const-string v10, "vibrate"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const v3, 0x7f0203d9

    goto/16 :goto_1

    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 70
    .restart local v1    # "bt":Ljava/lang/String;
    :cond_d
    const-string v10, "connected"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    const v3, 0x7f02038f

    goto/16 :goto_2

    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 77
    .restart local v4    # "location":Ljava/lang/String;
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 83
    .restart local v0    # "alarm":Ljava/lang/String;
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 89
    .restart local v7    # "sync":Ljava/lang/String;
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 95
    .restart local v8    # "tty":Ljava/lang/String;
    :cond_12
    const/4 v3, 0x0

    goto :goto_6

    .line 101
    .restart local v2    # "eri":Ljava/lang/String;
    :cond_13
    const/4 v3, 0x0

    goto :goto_7

    .line 107
    .restart local v5    # "mute":Ljava/lang/String;
    :cond_14
    const/4 v3, 0x0

    goto :goto_8

    .line 113
    .restart local v6    # "speakerphone":Ljava/lang/String;
    :cond_15
    const/4 v3, 0x0

    goto :goto_9
.end method
