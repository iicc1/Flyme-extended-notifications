.class public interface abstract Lcom/meizu/common/widget/RecipientEdit$RecipientAdapterEx;
.super Ljava/lang/Object;
.source "RecipientEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecipientAdapterEx"
.end annotation


# virtual methods
.method public abstract deleteRecommendContact(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/common/widget/RecipientEdit$Recipient;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getLocalRecipientData(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
.end method
