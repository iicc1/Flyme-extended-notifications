.class Lcom/android/systemui/floattouch/SmartTouchView$1;
.super Lcom/android/systemui/floattouch/SmartTouchView$CallBackAnimationDrawable;
.source "SmartTouchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/floattouch/SmartTouchView;->bindAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/floattouch/SmartTouchView;


# direct methods
.method constructor <init>(Lcom/android/systemui/floattouch/SmartTouchView;)V
    .locals 1

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/systemui/floattouch/SmartTouchView$1;->this$0:Lcom/android/systemui/floattouch/SmartTouchView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/floattouch/SmartTouchView$CallBackAnimationDrawable;-><init>(Lcom/android/systemui/floattouch/SmartTouchView;Lcom/android/systemui/floattouch/SmartTouchView$1;)V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/systemui/floattouch/SmartTouchView$1;->this$0:Lcom/android/systemui/floattouch/SmartTouchView;

    iget-object v1, p0, Lcom/android/systemui/floattouch/SmartTouchView$1;->this$0:Lcom/android/systemui/floattouch/SmartTouchView;

    # getter for: Lcom/android/systemui/floattouch/SmartTouchView;->toState:Lcom/android/systemui/floattouch/SmartTouchView$State;
    invoke-static {v1}, Lcom/android/systemui/floattouch/SmartTouchView;->access$200(Lcom/android/systemui/floattouch/SmartTouchView;)Lcom/android/systemui/floattouch/SmartTouchView$State;

    move-result-object v1

    # setter for: Lcom/android/systemui/floattouch/SmartTouchView;->nowState:Lcom/android/systemui/floattouch/SmartTouchView$State;
    invoke-static {v0, v1}, Lcom/android/systemui/floattouch/SmartTouchView;->access$102(Lcom/android/systemui/floattouch/SmartTouchView;Lcom/android/systemui/floattouch/SmartTouchView$State;)Lcom/android/systemui/floattouch/SmartTouchView$State;

    .line 168
    iget-object v1, p0, Lcom/android/systemui/floattouch/SmartTouchView$1;->this$0:Lcom/android/systemui/floattouch/SmartTouchView;

    iget-object v0, p0, Lcom/android/systemui/floattouch/SmartTouchView$1;->this$0:Lcom/android/systemui/floattouch/SmartTouchView;

    # getter for: Lcom/android/systemui/floattouch/SmartTouchView;->nowList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/systemui/floattouch/SmartTouchView;->access$300(Lcom/android/systemui/floattouch/SmartTouchView;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/floattouch/SmartTouchView$1;->this$0:Lcom/android/systemui/floattouch/SmartTouchView;

    # getter for: Lcom/android/systemui/floattouch/SmartTouchView;->nowList:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/android/systemui/floattouch/SmartTouchView;->access$300(Lcom/android/systemui/floattouch/SmartTouchView;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/floattouch/SmartTouchView;->setImageResource(I)V

    .line 169
    return-void
.end method
