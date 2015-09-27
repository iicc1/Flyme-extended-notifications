.class Lcom/android/systemui/statusbar/policy/BatteryController$1;
.super Ljava/lang/Object;
.source "BatteryController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->doAnimation()V

    .line 202
    return-void
.end method
