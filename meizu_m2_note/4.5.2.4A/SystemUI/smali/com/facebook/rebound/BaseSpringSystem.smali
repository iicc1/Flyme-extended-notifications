.class public Lcom/facebook/rebound/BaseSpringSystem;
.super Ljava/lang/Object;
.source "BaseSpringSystem.java"


# instance fields
.field private final mActiveSprings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/rebound/Spring;",
            ">;"
        }
    .end annotation
.end field

.field private mIdle:Z

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/facebook/rebound/SpringSystemListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpringLooper:Lcom/facebook/rebound/SpringLooper;

.field private final mSpringRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/rebound/Spring;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/rebound/SpringLooper;)V
    .locals 2
    .param p1, "springLooper"    # Lcom/facebook/rebound/SpringLooper;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->mSpringRegistry:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->mActiveSprings:Ljava/util/Set;

    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->mIdle:Z

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "springLooper is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/facebook/rebound/BaseSpringSystem;->mSpringLooper:Lcom/facebook/rebound/SpringLooper;

    .line 46
    iget-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->mSpringLooper:Lcom/facebook/rebound/SpringLooper;

    invoke-virtual {v0, p0}, Lcom/facebook/rebound/SpringLooper;->setSpringSystem(Lcom/facebook/rebound/BaseSpringSystem;)V

    .line 47
    return-void
.end method


# virtual methods
.method activateSpring(Ljava/lang/String;)V
    .locals 4
    .param p1, "springId"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v1, p0, Lcom/facebook/rebound/BaseSpringSystem;->mSpringRegistry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/Spring;

    .line 163
    .local v0, "spring":Lcom/facebook/rebound/Spring;
    if-nez v0, :cond_0

    .line 164
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "springId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not reference a registered spring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/facebook/rebound/BaseSpringSystem;->mActiveSprings:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {p0}, Lcom/facebook/rebound/BaseSpringSystem;->getIsIdle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/rebound/BaseSpringSystem;->mIdle:Z

    .line 169
    iget-object v1, p0, Lcom/facebook/rebound/BaseSpringSystem;->mSpringLooper:Lcom/facebook/rebound/SpringLooper;

    invoke-virtual {v1}, Lcom/facebook/rebound/SpringLooper;->start()V

    .line 171
    :cond_1
    return-void
.end method

.method advance(D)V
    .locals 5
    .param p1, "deltaTime"    # D

    .prologue
    .line 126
    iget-object v2, p0, Lcom/facebook/rebound/BaseSpringSystem;->mActiveSprings:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/Spring;

    .line 128
    .local v1, "spring":Lcom/facebook/rebound/Spring;
    invoke-virtual {v1}, Lcom/facebook/rebound/Spring;->systemShouldAdvance()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double v2, p1, v2

    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/Spring;->advance(D)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/facebook/rebound/BaseSpringSystem;->mActiveSprings:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    .end local v1    # "spring":Lcom/facebook/rebound/Spring;
    :cond_1
    return-void
.end method

.method public createSpring()Lcom/facebook/rebound/Spring;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/facebook/rebound/Spring;

    invoke-direct {v0, p0}, Lcom/facebook/rebound/Spring;-><init>(Lcom/facebook/rebound/BaseSpringSystem;)V

    .line 63
    .local v0, "spring":Lcom/facebook/rebound/Spring;
    invoke-virtual {p0, v0}, Lcom/facebook/rebound/BaseSpringSystem;->registerSpring(Lcom/facebook/rebound/Spring;)V

    .line 64
    return-object v0
.end method

.method public getIsIdle()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->mIdle:Z

    return v0
.end method

.method public loop(D)V
    .locals 3
    .param p1, "ellapsedMillis"    # D

    .prologue
    .line 140
    iget-object v2, p0, Lcom/facebook/rebound/BaseSpringSystem;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/SpringSystemListener;

    .line 141
    .local v1, "listener":Lcom/facebook/rebound/SpringSystemListener;
    invoke-interface {v1, p0}, Lcom/facebook/rebound/SpringSystemListener;->onBeforeIntegrate(Lcom/facebook/rebound/BaseSpringSystem;)V

    goto :goto_0

    .line 143
    .end local v1    # "listener":Lcom/facebook/rebound/SpringSystemListener;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/rebound/BaseSpringSystem;->advance(D)V

    .line 144
    iget-object v2, p0, Lcom/facebook/rebound/BaseSpringSystem;->mActiveSprings:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/rebound/BaseSpringSystem;->mIdle:Z

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/facebook/rebound/BaseSpringSystem;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/SpringSystemListener;

    .line 148
    .restart local v1    # "listener":Lcom/facebook/rebound/SpringSystemListener;
    invoke-interface {v1, p0}, Lcom/facebook/rebound/SpringSystemListener;->onAfterIntegrate(Lcom/facebook/rebound/BaseSpringSystem;)V

    goto :goto_1

    .line 150
    .end local v1    # "listener":Lcom/facebook/rebound/SpringSystemListener;
    :cond_2
    iget-boolean v2, p0, Lcom/facebook/rebound/BaseSpringSystem;->mIdle:Z

    if-eqz v2, :cond_3

    .line 151
    iget-object v2, p0, Lcom/facebook/rebound/BaseSpringSystem;->mSpringLooper:Lcom/facebook/rebound/SpringLooper;

    invoke-virtual {v2}, Lcom/facebook/rebound/SpringLooper;->stop()V

    .line 153
    :cond_3
    return-void
.end method

.method registerSpring(Lcom/facebook/rebound/Spring;)V
    .locals 2
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spring is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->mSpringRegistry:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spring is already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/facebook/rebound/BaseSpringSystem;->mSpringRegistry:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method
