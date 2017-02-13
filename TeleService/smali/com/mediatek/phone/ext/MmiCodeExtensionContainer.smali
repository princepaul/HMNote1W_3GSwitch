.class public Lcom/mediatek/phone/ext/MmiCodeExtensionContainer;
.super Lcom/mediatek/phone/ext/MmiCodeExtension;
.source "MmiCodeExtensionContainer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MmiCodeExtensionContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/phone/ext/MmiCodeExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/mediatek/phone/ext/MmiCodeExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/phone/ext/MmiCodeExtension;)V
    .locals 3
    .param p1, "extension"    # Lcom/mediatek/phone/ext/MmiCodeExtension;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mediatek/phone/ext/MmiCodeExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 24
    const-string v0, "MmiCodeExtensionContainer"

    const-string v1, "create sub extension list"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/MmiCodeExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 27
    :cond_0
    const-string v0, "MmiCodeExtensionContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add extension, extension is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/mediatek/phone/ext/MmiCodeExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public onMmiCodeStarted(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mmiCode"    # Lcom/android/internal/telephony/MmiCode;
    .param p3, "callBackMessage"    # Landroid/os/Message;
    .param p4, "progressDialog"    # Landroid/app/Dialog;

    .prologue
    .line 33
    iget-object v1, p0, Lcom/mediatek/phone/ext/MmiCodeExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 34
    const-string v1, "MmiCodeExtensionContainer"

    const-string v2, "onMmiCodeStarted(), sub extension list is null, just return"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void

    .line 37
    :cond_1
    const-string v1, "MmiCodeExtensionContainer"

    const-string v2, "onMmiCodeStarted()"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/mediatek/phone/ext/MmiCodeExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 39
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/phone/ext/MmiCodeExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/phone/ext/MmiCodeExtension;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/mediatek/phone/ext/MmiCodeExtension;->onMmiCodeStarted(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public onUssdAlertActivityResume(Lcom/android/internal/app/AlertActivity;Landroid/widget/EditText;ILcom/android/internal/app/AlertController;)Z
    .locals 4
    .param p1, "ussdActivity"    # Lcom/android/internal/app/AlertActivity;
    .param p2, "inputText"    # Landroid/widget/EditText;
    .param p3, "ussdType"    # I
    .param p4, "alertController"    # Lcom/android/internal/app/AlertController;

    .prologue
    const/4 v2, 0x0

    .line 45
    iget-object v1, p0, Lcom/mediatek/phone/ext/MmiCodeExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 46
    const-string v1, "MmiCodeExtensionContainer"

    const-string v3, "onUssdAlertActivityResume(), sub extension list is null, just return false"

    invoke-static {v1, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 57
    :goto_0
    return v1

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/mediatek/phone/ext/MmiCodeExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 50
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/phone/ext/MmiCodeExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/phone/ext/MmiCodeExtension;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/mediatek/phone/ext/MmiCodeExtension;->onUssdAlertActivityResume(Lcom/android/internal/app/AlertActivity;Landroid/widget/EditText;ILcom/android/internal/app/AlertController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    const-string v1, "MmiCodeExtensionContainer"

    const-string v2, "onUssdAlertActivityResume(), Plug-in return true."

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v1, 0x1

    goto :goto_0

    .line 56
    :cond_2
    const-string v1, "MmiCodeExtensionContainer"

    const-string v3, "onUssdAlertActivityResume(), default false"

    invoke-static {v1, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 57
    goto :goto_0
.end method

.method public onUssdUserInitiated(Lcom/android/internal/app/AlertActivity;Z)Z
    .locals 4
    .param p1, "ussdActivity"    # Lcom/android/internal/app/AlertActivity;
    .param p2, "userInit"    # Z

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-object v1, p0, Lcom/mediatek/phone/ext/MmiCodeExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 63
    const-string v1, "MmiCodeExtensionContainer"

    const-string v3, "onUssdUserInitiated(), sub extension list is null, just return false"

    invoke-static {v1, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 74
    :goto_0
    return v1

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/mediatek/phone/ext/MmiCodeExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 67
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/phone/ext/MmiCodeExtension;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/phone/ext/MmiCodeExtension;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/phone/ext/MmiCodeExtension;->onUssdUserInitiated(Lcom/android/internal/app/AlertActivity;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    const-string v1, "MmiCodeExtensionContainer"

    const-string v2, "onUssdUserInitiated(), Plug-in return true."

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v1, 0x1

    goto :goto_0

    .line 73
    :cond_2
    const-string v1, "MmiCodeExtensionContainer"

    const-string v3, "onUssdUserInitiated(), default false"

    invoke-static {v1, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 74
    goto :goto_0
.end method
