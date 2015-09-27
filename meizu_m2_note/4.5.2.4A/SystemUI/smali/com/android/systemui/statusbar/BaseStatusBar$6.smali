.class Lcom/android/systemui/statusbar/BaseStatusBar$6;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->expandLongClicker()Landroid/view/View$OnLongClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 447
    const/4 v10, 0x2

    new-array v4, v10, [I

    .line 448
    .local v4, "pos":[I
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 449
    aget v10, v4, v8

    int-to-float v6, v10

    .line 450
    .local v6, "x":F
    aget v10, v4, v9

    int-to-float v7, v10

    .line 452
    .local v7, "y":F
    const/4 v3, 0x0

    .line 453
    .local v3, "pileView":Landroid/view/View;
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v10, v6, v7}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAtRawPosition(FF)Landroid/view/View;

    move-result-object v3

    .line 455
    const-string v10, "StatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mPile.canChildBeExpanded(v):"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v12, v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->canChildBeExpanded(Landroid/view/View;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v10, v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->canChildBeExpanded(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 462
    const-string v10, "StatusBar"

    const-string v11, "child can be expanded!"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v10, v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getUserExpandedChild(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v10, v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getSystemExpandedChild(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 469
    :cond_0
    const-string v10, "StatusBar"

    const-string v11, "already expanded!"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 472
    .local v2, "packageNameF":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 584
    .end local v2    # "packageNameF":Ljava/lang/String;
    :cond_1
    :goto_0
    return v8

    .line 474
    .restart local v2    # "packageNameF":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 501
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    # invokes: Lcom/android/systemui/statusbar/BaseStatusBar;->startApplicationDetailsActivity(Ljava/lang/String;)V
    invoke-static {v10, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$100(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;)V

    .line 502
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v10, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(I)V

    move v8, v9

    .line 504
    goto :goto_0

    .line 511
    .end local v2    # "packageNameF":Ljava/lang/String;
    :cond_3
    const-string v10, "StatusBar"

    const-string v11, "not expanded yet..."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0022

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 519
    .local v5, "rowMaxHeight":I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 520
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 521
    .local v1, "oldHeight":I
    const/4 v10, -0x2

    iput v10, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 522
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/high16 v11, -0x80000000

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Landroid/view/View;->measure(II)V

    .line 534
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/BaseStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v10, v3, v9}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setUserExpandedChild(Landroid/view/View;Z)V

    goto :goto_0

    .line 548
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "oldHeight":I
    .end local v5    # "rowMaxHeight":I
    :cond_4
    const-string v10, "StatusBar"

    const-string v11, "child cannot be expanded..."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 551
    .restart local v2    # "packageNameF":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 553
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 581
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    # invokes: Lcom/android/systemui/statusbar/BaseStatusBar;->startApplicationDetailsActivity(Ljava/lang/String;)V
    invoke-static {v10, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$100(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;)V

    .line 582
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$6;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v10, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(I)V

    move v8, v9

    .line 584
    goto :goto_0
.end method
