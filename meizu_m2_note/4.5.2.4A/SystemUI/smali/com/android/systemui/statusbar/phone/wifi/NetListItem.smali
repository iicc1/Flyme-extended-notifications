.class public Lcom/android/systemui/statusbar/phone/wifi/NetListItem;
.super Ljava/lang/Object;
.source "NetListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;
    }
.end annotation


# instance fields
.field protected mItemType:Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;->TYPE_ACCESSPOINT:Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/NetListItem;->mItemType:Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;)V
    .locals 1
    .param p1, "itemType"    # Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;->TYPE_ACCESSPOINT:Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/NetListItem;->mItemType:Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/wifi/NetListItem;->mItemType:Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

    .line 38
    return-void
.end method
