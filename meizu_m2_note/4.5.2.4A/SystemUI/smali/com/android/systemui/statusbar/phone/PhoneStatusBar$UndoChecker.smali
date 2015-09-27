.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$UndoChecker;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UndoChecker"
.end annotation


# instance fields
.field private mDirection:Z

.field private mIsStart:Z

.field private mUndoPos:F

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1

    .prologue
    .line 8113
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$UndoChecker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$UndoChecker;->mIsStart:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;

    .prologue
    .line 8113
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$UndoChecker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    return-void
.end method

.method private isDragFarEnough(F)Z
    .locals 4
    .param p1, "endPos"    # F

    .prologue
    .line 8174
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$UndoChecker;->mUndoPos:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 8175
    .local v0, "dragFarEnough":F
    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 8176
    const-string v1, "UndoChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "success to undo drag!  dragFarEnough = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8177
    const/4 v1, 0x1

    .line 8181
    :goto_0
    return v1

    .line 8180
    :cond_0
    const-string v1, "UndoChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to undo drag!  dragFarEnough = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8181
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onDown(FZ)V
    .locals 3
    .param p1, "startPos"    # F
    .param p2, "direction"    # Z

    .prologue
    .line 8131
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$UndoChecker;->mIsStart:Z

    if-nez v0, :cond_0

    .line 8132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$UndoChecker;->mIsStart:Z

    .line 8133
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$UndoChecker;->mUndoPos:F

    .line 8134
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$UndoChecker;->mDirection:Z

    .line 8135
    const-string v0, "UndoChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDown direction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , startPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8137
    :cond_0
    return-void
.end method

.method public onMove(F)V
    .locals 1
    .param p1, "currentPos"    # F

    .prologue
    .line 8141
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$UndoChecker;->mDirection:Z

    if-nez v0, :cond_1

    .line 8142
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$UndoChecker;->mUndoPos:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 8143
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$UndoChecker;->mUndoPos:F

    .line 8153
    :cond_0
    :goto_0
    return-void

    .line 8148
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$UndoChecker;->mUndoPos:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 8149
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$UndoChecker;->mUndoPos:F

    goto :goto_0
.end method

.method public onUp(F)Z
    .locals 2
    .param p1, "endPos"    # F

    .prologue
    .line 8157
    const/4 v0, 0x0

    .line 8158
    .local v0, "result":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$UndoChecker;->mDirection:Z

    if-nez v1, :cond_1

    .line 8159
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$UndoChecker;->mUndoPos:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 8160
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$UndoChecker;->isDragFarEnough(F)Z

    move-result v0

    .line 8169
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$UndoChecker;->mIsStart:Z

    .line 8170
    return v0

    .line 8164
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$UndoChecker;->mUndoPos:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 8165
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$UndoChecker;->isDragFarEnough(F)Z

    move-result v0

    goto :goto_0
.end method
