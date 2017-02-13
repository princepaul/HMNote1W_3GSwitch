.class public Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;
.super Lcom/mediatek/phone/ext/CallNotifierExtension;
.source "CallNotifierExtensionContainer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CallNotifierExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/phone/ext/CallNotifierExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mediatek/phone/ext/CallNotifierExtension;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v0, "CallNotifierExtensionContainer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/phone/ext/CallNotifierExtension;)V
    .locals 2
    .param p1, "extension"    # Lcom/mediatek/phone/ext/CallNotifierExtension;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 59
    const-string v0, "create sub extension list"

    invoke-static {v0}, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->log(Ljava/lang/String;)V

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add extension, extension is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->log(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public onDisconnect(Lcom/android/internal/telephony/Connection;)Z
    .locals 3
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v1, p0, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 98
    const-string v1, "onDisconnect(), sub extension list is null, just return"

    invoke-static {v1}, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->log(Ljava/lang/String;)V

    move v1, v2

    .line 107
    :goto_0
    return v1

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 102
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/phone/ext/CallNotifierExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/phone/ext/CallNotifierExtension;

    invoke-virtual {v1, p1}, Lcom/mediatek/phone/ext/CallNotifierExtension;->onDisconnect(Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 107
    goto :goto_0
.end method

.method public onPhoneStateChanged(Lcom/android/internal/telephony/CallManager;Landroid/content/Context;)V
    .locals 2
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    iget-object v1, p0, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 84
    const-string v1, "initialize(), sub extension list is null, just return"

    invoke-static {v1}, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->log(Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 88
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/phone/ext/CallNotifierExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/phone/ext/CallNotifierExtension;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/phone/ext/CallNotifierExtension;->onPhoneStateChanged(Lcom/android/internal/telephony/CallManager;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public remove(Lcom/mediatek/phone/ext/CallNotifierExtension;)V
    .locals 2
    .param p1, "extension"    # Lcom/mediatek/phone/ext/CallNotifierExtension;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 72
    const-string v0, "remove extension, sub extension list is null, just return"

    invoke-static {v0}, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->log(Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove extension, extension is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->log(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
