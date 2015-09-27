.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 3879
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3881
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v7

    monitor-enter v7

    .line 3883
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v2

    .line 3885
    .local v2, "numChildren":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Lcom/android/systemui/statusbar/phone/PanelScrollView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PanelScrollView;->getScrollY()I

    move-result v4

    .line 3886
    .local v4, "scrollTop":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Lcom/android/systemui/statusbar/phone/PanelScrollView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PanelScrollView;->getHeight()I

    move-result v6

    add-int v3, v4, v6

    .line 3887
    .local v3, "scrollBottom":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3888
    .local v5, "snapshot":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 3889
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3893
    .local v0, "child":Landroid/view/View;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3895
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3888
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3898
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3899
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 3900
    monitor-exit v7

    .line 4004
    :goto_1
    return-void

    .line 3903
    :cond_2
    new-instance v6, Ljava/lang/Thread;

    new-instance v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;

    invoke-direct {v8, p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;Ljava/util/ArrayList;)V

    invoke-direct {v6, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 4001
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/SystemUIMobEventUtils;->collectClearAllNotifications(Landroid/content/Context;)V

    .line 4003
    monitor-exit v7

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "numChildren":I
    .end local v3    # "scrollBottom":I
    .end local v4    # "scrollTop":I
    .end local v5    # "snapshot":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method
