.class public final Lcom/android/systemui/statusbar/phone/MarqueeTicker$Segment;
.super Ljava/lang/Object;
.source "MarqueeTicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/MarqueeTicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Segment"
.end annotation


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field isRemoved:Z

.field notification:Landroid/service/notification/StatusBarNotification;

.field text:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/MarqueeTicker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/MarqueeTicker;Landroid/service/notification/StatusBarNotification;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .param p2, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$Segment;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    .line 69
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$Segment;->icon:Landroid/graphics/drawable/Drawable;

    .line 70
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$Segment;->text:Ljava/lang/CharSequence;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$Segment;->isRemoved:Z

    .line 72
    return-void
.end method
