.class public Lcom/android/systemui/statusbar/phone/SystemIconArea;
.super Landroid/widget/LinearLayout;
.source "SystemIconArea.java"


# instance fields
.field private mConnectionRate:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mStatusIcons:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SystemIconArea;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private computeRightEdge()I
    .locals 4

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SystemIconArea;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 131
    .local v0, "parent":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    sub-int v1, v2, v3

    .line 133
    .local v1, "rightEdge":I
    return v1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 41
    const v0, 0x7f0e007f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SystemIconArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemIconArea;->mStatusIcons:Landroid/view/ViewGroup;

    .line 42
    const v0, 0x7f0e007e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SystemIconArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemIconArea;->mConnectionRate:Landroid/view/View;

    .line 43
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemIconArea;->mStatusIcons:Landroid/view/ViewGroup;

    .line 48
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemIconArea;->mConnectionRate:Landroid/view/View;

    .line 50
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 51
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 30
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/SystemIconArea;->computeRightEdge()I

    move-result v20

    .line 56
    .local v20, "rightEdge":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/SystemIconArea;->getMeasuredWidth()I

    move-result v19

    .line 57
    .local v19, "requestedWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/SystemIconArea;->getRight()I

    move-result v3

    sub-int v12, v20, v3

    .line 58
    .local v12, "delta":I
    move/from16 v18, v19

    .line 60
    .local v18, "realWidth":I
    if-gez v12, :cond_5

    .line 64
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SystemIconArea;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    add-int v21, v3, v12

    .line 65
    .local v21, "statusIconsAvailableWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SystemIconArea;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/SystemIconArea;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v4

    add-int v23, v3, v4

    .line 66
    .local v23, "statusIconsMinWidth":I
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 67
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SystemIconArea;->mConnectionRate:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 70
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SystemIconArea;->mConnectionRate:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 71
    .local v16, "oldConnectionRateWidth":I
    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 72
    .local v11, "connectionRateWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SystemIconArea;->mConnectionRate:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 73
    .local v10, "connectionRateHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SystemIconArea;->mConnectionRate:Landroid/view/View;

    invoke-virtual {v3, v11, v10}, Landroid/view/View;->measure(II)V

    .line 74
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SystemIconArea;->mConnectionRate:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 75
    .local v14, "newConnectionRateWidth":I
    sub-int v3, v16, v14

    sub-int v18, v18, v3

    .line 79
    .end local v10    # "connectionRateHeight":I
    .end local v11    # "connectionRateWidth":I
    .end local v14    # "newConnectionRateWidth":I
    .end local v16    # "oldConnectionRateWidth":I
    :cond_0
    move/from16 v21, v23

    .line 82
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SystemIconArea;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3

    .line 84
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SystemIconArea;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v17

    .line 87
    .local v17, "oldStatusIconsWidth":I
    const/16 v24, 0x0

    .line 89
    .local v24, "statusIconsRealWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SystemIconArea;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 90
    .local v9, "N":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v9, :cond_2

    .line 91
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SystemIconArea;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 92
    .local v29, "w":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SystemIconArea;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v28

    .line 93
    .local v28, "visibility":I
    if-lez v29, :cond_4

    if-nez v28, :cond_4

    .line 98
    add-int v24, v24, v29

    .line 99
    move/from16 v0, v24

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    .line 100
    sub-int v24, v24, v29

    .line 105
    .end local v28    # "visibility":I
    .end local v29    # "w":I
    :cond_2
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v24

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    .line 106
    .local v25, "statusIconsWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SystemIconArea;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .line 107
    .local v22, "statusIconsHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SystemIconArea;->mStatusIcons:Landroid/view/ViewGroup;

    move/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SystemIconArea;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v15

    .line 109
    .local v15, "newStatusIconsWidth":I
    sub-int v3, v17, v15

    sub-int v18, v18, v3

    .line 112
    .end local v9    # "N":I
    .end local v13    # "i":I
    .end local v15    # "newStatusIconsWidth":I
    .end local v17    # "oldStatusIconsWidth":I
    .end local v22    # "statusIconsHeight":I
    .end local v24    # "statusIconsRealWidth":I
    .end local v25    # "statusIconsWidth":I
    :cond_3
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v18

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    .line 113
    .local v27, "systemIconAreaWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/SystemIconArea;->getMeasuredHeight()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    .line 114
    .local v26, "systemIconAreaHeight":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemIconArea;->setMeasuredDimension(II)V

    .line 117
    move/from16 v7, v20

    .line 118
    .local v7, "right":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/SystemIconArea;->getMeasuredWidth()I

    move-result v3

    sub-int v5, v7, v3

    .line 119
    .local v5, "left":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p5

    invoke-virtual {v0, v5, v1, v7, v2}, Lcom/android/systemui/statusbar/phone/SystemIconArea;->setFrame(IIII)Z

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v6, p3

    move/from16 v8, p5

    .line 120
    invoke-super/range {v3 .. v8}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 126
    .end local v5    # "left":I
    .end local v7    # "right":I
    .end local v21    # "statusIconsAvailableWidth":I
    .end local v23    # "statusIconsMinWidth":I
    .end local v26    # "systemIconAreaHeight":I
    .end local v27    # "systemIconAreaWidth":I
    :goto_1
    return-void

    .line 90
    .restart local v9    # "N":I
    .restart local v13    # "i":I
    .restart local v17    # "oldStatusIconsWidth":I
    .restart local v21    # "statusIconsAvailableWidth":I
    .restart local v23    # "statusIconsMinWidth":I
    .restart local v24    # "statusIconsRealWidth":I
    .restart local v28    # "visibility":I
    .restart local v29    # "w":I
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 124
    .end local v9    # "N":I
    .end local v13    # "i":I
    .end local v17    # "oldStatusIconsWidth":I
    .end local v21    # "statusIconsAvailableWidth":I
    .end local v23    # "statusIconsMinWidth":I
    .end local v24    # "statusIconsRealWidth":I
    .end local v28    # "visibility":I
    .end local v29    # "w":I
    :cond_5
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    goto :goto_1
.end method
