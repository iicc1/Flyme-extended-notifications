.class Lcom/android/systemui/mzrecent/MzSlidingDrawer$SlidingHandler;
.super Landroid/os/Handler;
.source "MzSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/mzrecent/MzSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/mzrecent/MzSlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/android/systemui/mzrecent/MzSlidingDrawer;)V
    .locals 0

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer$SlidingHandler;->this$0:Lcom/android/systemui/mzrecent/MzSlidingDrawer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/mzrecent/MzSlidingDrawer;Lcom/android/systemui/mzrecent/MzSlidingDrawer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/mzrecent/MzSlidingDrawer;
    .param p2, "x1"    # Lcom/android/systemui/mzrecent/MzSlidingDrawer$1;

    .prologue
    .line 1177
    invoke-direct {p0, p1}, Lcom/android/systemui/mzrecent/MzSlidingDrawer$SlidingHandler;-><init>(Lcom/android/systemui/mzrecent/MzSlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 1179
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1193
    :cond_0
    :goto_0
    return-void

    .line 1181
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer$SlidingHandler;->this$0:Lcom/android/systemui/mzrecent/MzSlidingDrawer;

    # invokes: Lcom/android/systemui/mzrecent/MzSlidingDrawer;->doAnimation()V
    invoke-static {v0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->access$300(Lcom/android/systemui/mzrecent/MzSlidingDrawer;)V

    goto :goto_0

    .line 1184
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer$SlidingHandler;->this$0:Lcom/android/systemui/mzrecent/MzSlidingDrawer;

    iget-boolean v0, v0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTracking:Z

    if-nez v0, :cond_0

    .line 1186
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer$SlidingHandler;->this$0:Lcom/android/systemui/mzrecent/MzSlidingDrawer;

    iget-object v0, v0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBlurView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->blurUnderMeRect(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1187
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1179
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
