.class public Lcom/mediatek/phone/ext/MmiCodeExtension;
.super Ljava/lang/Object;
.source "MmiCodeExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMmiCodeStarted(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mmiCode"    # Lcom/android/internal/telephony/MmiCode;
    .param p3, "callBackMessage"    # Landroid/os/Message;
    .param p4, "progressDialog"    # Landroid/app/Dialog;

    .prologue
    .line 25
    return-void
.end method

.method public onUssdAlertActivityResume(Lcom/android/internal/app/AlertActivity;Landroid/widget/EditText;ILcom/android/internal/app/AlertController;)Z
    .locals 1
    .param p1, "ussdActivity"    # Lcom/android/internal/app/AlertActivity;
    .param p2, "inputText"    # Landroid/widget/EditText;
    .param p3, "ussdType"    # I
    .param p4, "alertController"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public onUssdUserInitiated(Lcom/android/internal/app/AlertActivity;Z)Z
    .locals 1
    .param p1, "ussdActivity"    # Lcom/android/internal/app/AlertActivity;
    .param p2, "userInit"    # Z

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method
