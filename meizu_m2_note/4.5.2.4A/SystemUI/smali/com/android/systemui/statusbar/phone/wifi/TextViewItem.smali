.class public Lcom/android/systemui/statusbar/phone/wifi/TextViewItem;
.super Lcom/android/systemui/statusbar/phone/wifi/NetListItem;
.source "TextViewItem.java"


# instance fields
.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/wifi/NetListItem;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/wifi/TextViewItem;->title:Ljava/lang/String;

    .line 25
    return-void
.end method
