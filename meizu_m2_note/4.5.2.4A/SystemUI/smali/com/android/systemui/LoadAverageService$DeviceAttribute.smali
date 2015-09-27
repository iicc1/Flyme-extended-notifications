.class abstract Lcom/android/systemui/LoadAverageService$DeviceAttribute;
.super Ljava/lang/Object;
.source "LoadAverageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/LoadAverageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DeviceAttribute"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/LoadAverageService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/LoadAverageService;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute;->this$0:Lcom/android/systemui/LoadAverageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method


# virtual methods
.method public abstract getLineSize()I
.end method

.method public abstract updateDeviceAttribute()[Ljava/lang/String;
.end method
