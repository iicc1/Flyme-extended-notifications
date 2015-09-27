.class abstract Lcom/android/systemui/floattouch/SmartTouchView$CallBackAnimationDrawable;
.super Landroid/graphics/drawable/AnimationDrawable;
.source "SmartTouchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/floattouch/SmartTouchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CallBackAnimationDrawable"
.end annotation


# instance fields
.field private nowFrame:I

.field final synthetic this$0:Lcom/android/systemui/floattouch/SmartTouchView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/floattouch/SmartTouchView;)V
    .locals 1

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/systemui/floattouch/SmartTouchView$CallBackAnimationDrawable;->this$0:Lcom/android/systemui/floattouch/SmartTouchView;

    invoke-direct {p0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/floattouch/SmartTouchView$CallBackAnimationDrawable;->nowFrame:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/floattouch/SmartTouchView;Lcom/android/systemui/floattouch/SmartTouchView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/floattouch/SmartTouchView;
    .param p2, "x1"    # Lcom/android/systemui/floattouch/SmartTouchView$1;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/android/systemui/floattouch/SmartTouchView$CallBackAnimationDrawable;-><init>(Lcom/android/systemui/floattouch/SmartTouchView;)V

    return-void
.end method


# virtual methods
.method public abstract onFinished()V
.end method

.method public run()V
    .locals 3

    .prologue
    .line 184
    invoke-super {p0}, Landroid/graphics/drawable/AnimationDrawable;->run()V

    .line 185
    iget-object v1, p0, Lcom/android/systemui/floattouch/SmartTouchView$CallBackAnimationDrawable;->this$0:Lcom/android/systemui/floattouch/SmartTouchView;

    iget-object v0, p0, Lcom/android/systemui/floattouch/SmartTouchView$CallBackAnimationDrawable;->this$0:Lcom/android/systemui/floattouch/SmartTouchView;

    # getter for: Lcom/android/systemui/floattouch/SmartTouchView;->nowList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/systemui/floattouch/SmartTouchView;->access$300(Lcom/android/systemui/floattouch/SmartTouchView;)Ljava/util/LinkedList;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/floattouch/SmartTouchView$CallBackAnimationDrawable;->nowFrame:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/android/systemui/floattouch/SmartTouchView;->nowPictureId:I
    invoke-static {v1, v0}, Lcom/android/systemui/floattouch/SmartTouchView;->access$402(Lcom/android/systemui/floattouch/SmartTouchView;I)I

    .line 186
    iget v0, p0, Lcom/android/systemui/floattouch/SmartTouchView$CallBackAnimationDrawable;->nowFrame:I

    invoke-virtual {p0}, Lcom/android/systemui/floattouch/SmartTouchView$CallBackAnimationDrawable;->getNumberOfFrames()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 187
    iget v0, p0, Lcom/android/systemui/floattouch/SmartTouchView$CallBackAnimationDrawable;->nowFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/floattouch/SmartTouchView$CallBackAnimationDrawable;->nowFrame:I

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/floattouch/SmartTouchView$CallBackAnimationDrawable;->onFinished()V

    goto :goto_0
.end method
