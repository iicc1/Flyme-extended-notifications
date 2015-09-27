.class public Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;
.super Lcom/android/systemui/statusbar/phone/wifi/NetListItem;
.source "CheckBoxItem.java"


# instance fields
.field public checked:Z

.field public enabled:Z

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "t"    # Ljava/lang/String;
    .param p2, "c"    # Z

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/wifi/NetListItem;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;->title:Ljava/lang/String;

    .line 30
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;->checked:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;->enabled:Z

    .line 32
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 0
    .param p1, "ck"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;->checked:Z

    .line 36
    return-void
.end method
