.class Lcom/android/phone/CallRecordingServiceProxy$1;
.super Ljava/lang/Object;
.source "CallRecordingServiceProxy.java"

# interfaces
.implements Lcom/android/phone/CallRecorder$CallRecordStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallRecordingServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallRecordingServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/phone/CallRecordingServiceProxy;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/phone/CallRecordingServiceProxy$1;->this$0:Lcom/android/phone/CallRecordingServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallRecordFailed(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 84
    const-string v1, "CallRecordingServiceProxy"

    const-string v2, "onCallRecordStartFailed from service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->callCommandService:Lcom/android/phone/CallCommandService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/CallCommandService;->setManualFlag(Z)V

    .line 87
    iget-object v1, p0, Lcom/android/phone/CallRecordingServiceProxy$1;->this$0:Lcom/android/phone/CallRecordingServiceProxy;

    # getter for: Lcom/android/phone/CallRecordingServiceProxy;->mCallRecordingService:Lcom/android/services/telephony/common/ICallRecordingService;
    invoke-static {v1}, Lcom/android/phone/CallRecordingServiceProxy;->access$000(Lcom/android/phone/CallRecordingServiceProxy;)Lcom/android/services/telephony/common/ICallRecordingService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/phone/CallRecordingServiceProxy$1;->this$0:Lcom/android/phone/CallRecordingServiceProxy;

    # getter for: Lcom/android/phone/CallRecordingServiceProxy;->mCallRecordingService:Lcom/android/services/telephony/common/ICallRecordingService;
    invoke-static {v1}, Lcom/android/phone/CallRecordingServiceProxy;->access$000(Lcom/android/phone/CallRecordingServiceProxy;)Lcom/android/services/telephony/common/ICallRecordingService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallRecordingService;->onCallRecordingFailed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCallRecordStarted()V
    .locals 3

    .prologue
    .line 71
    const-string v1, "CallRecordingServiceProxy"

    const-string v2, "onCallRecordStarted from service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallRecordingServiceProxy$1;->this$0:Lcom/android/phone/CallRecordingServiceProxy;

    # getter for: Lcom/android/phone/CallRecordingServiceProxy;->mCallRecordingService:Lcom/android/services/telephony/common/ICallRecordingService;
    invoke-static {v1}, Lcom/android/phone/CallRecordingServiceProxy;->access$000(Lcom/android/phone/CallRecordingServiceProxy;)Lcom/android/services/telephony/common/ICallRecordingService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/phone/CallRecordingServiceProxy$1;->this$0:Lcom/android/phone/CallRecordingServiceProxy;

    # getter for: Lcom/android/phone/CallRecordingServiceProxy;->mCallRecordingService:Lcom/android/services/telephony/common/ICallRecordingService;
    invoke-static {v1}, Lcom/android/phone/CallRecordingServiceProxy;->access$000(Lcom/android/phone/CallRecordingServiceProxy;)Lcom/android/services/telephony/common/ICallRecordingService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallRecordingService;->onCallRecordingStarted()V

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallRecordingServiceProxy$1;->this$0:Lcom/android/phone/CallRecordingServiceProxy;

    # getter for: Lcom/android/phone/CallRecordingServiceProxy;->mNotificationMgr:Lcom/android/phone/NotificationMgr;
    invoke-static {v1}, Lcom/android/phone/CallRecordingServiceProxy;->access$100(Lcom/android/phone/CallRecordingServiceProxy;)Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->notifyCallRecord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCallRecordStoped(ILjava/lang/String;)V
    .locals 7
    .param p1, "errorCode"    # I
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 97
    const-string v1, "CallRecordingServiceProxy"

    const-string v2, "onCallRecordStoped from service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->callCommandService:Lcom/android/phone/CallCommandService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/CallCommandService;->setManualFlag(Z)V

    .line 100
    iget-object v1, p0, Lcom/android/phone/CallRecordingServiceProxy$1;->this$0:Lcom/android/phone/CallRecordingServiceProxy;

    # getter for: Lcom/android/phone/CallRecordingServiceProxy;->mCallRecordingService:Lcom/android/services/telephony/common/ICallRecordingService;
    invoke-static {v1}, Lcom/android/phone/CallRecordingServiceProxy;->access$000(Lcom/android/phone/CallRecordingServiceProxy;)Lcom/android/services/telephony/common/ICallRecordingService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/phone/CallRecordingServiceProxy$1;->this$0:Lcom/android/phone/CallRecordingServiceProxy;

    # getter for: Lcom/android/phone/CallRecordingServiceProxy;->mCallRecordingService:Lcom/android/services/telephony/common/ICallRecordingService;
    invoke-static {v1}, Lcom/android/phone/CallRecordingServiceProxy;->access$000(Lcom/android/phone/CallRecordingServiceProxy;)Lcom/android/services/telephony/common/ICallRecordingService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ICallRecordingService;->onCallRecordingStoped(ILjava/lang/String;)V

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallRecordingServiceProxy$1;->this$0:Lcom/android/phone/CallRecordingServiceProxy;

    # getter for: Lcom/android/phone/CallRecordingServiceProxy;->mNotificationMgr:Lcom/android/phone/NotificationMgr;
    invoke-static {v1}, Lcom/android/phone/CallRecordingServiceProxy;->access$100(Lcom/android/phone/CallRecordingServiceProxy;)Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->cancelCallRecord()V

    .line 104
    packed-switch p1, :pswitch_data_0

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 106
    :pswitch_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/settings/CallRecordSetting;->isCallRecordNotificationOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/android/phone/CallRecordingServiceProxy$1;->this$0:Lcom/android/phone/CallRecordingServiceProxy;

    # getter for: Lcom/android/phone/CallRecordingServiceProxy;->mNotificationMgr:Lcom/android/phone/NotificationMgr;
    invoke-static {v1}, Lcom/android/phone/CallRecordingServiceProxy;->access$100(Lcom/android/phone/CallRecordingServiceProxy;)Lcom/android/phone/NotificationMgr;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/phone/CallRecordingServiceProxy$1;->this$0:Lcom/android/phone/CallRecordingServiceProxy;

    # getter for: Lcom/android/phone/CallRecordingServiceProxy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/CallRecordingServiceProxy;->access$200(Lcom/android/phone/CallRecordingServiceProxy;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b040b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/phone/NotificationMgr;->updateCallRecordNotification(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallRecordingServiceProxy$1;->this$0:Lcom/android/phone/CallRecordingServiceProxy;

    # getter for: Lcom/android/phone/CallRecordingServiceProxy;->mNotificationMgr:Lcom/android/phone/NotificationMgr;
    invoke-static {v1}, Lcom/android/phone/CallRecordingServiceProxy;->access$100(Lcom/android/phone/CallRecordingServiceProxy;)Lcom/android/phone/NotificationMgr;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/phone/CallRecordingServiceProxy$1;->this$0:Lcom/android/phone/CallRecordingServiceProxy;

    # getter for: Lcom/android/phone/CallRecordingServiceProxy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/CallRecordingServiceProxy;->access$200(Lcom/android/phone/CallRecordingServiceProxy;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b040a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/phone/NotificationMgr;->updateCallRecordNotification(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/CallRecordingServiceProxy$1;->this$0:Lcom/android/phone/CallRecordingServiceProxy;

    # getter for: Lcom/android/phone/CallRecordingServiceProxy;->mNotificationMgr:Lcom/android/phone/NotificationMgr;
    invoke-static {v1}, Lcom/android/phone/CallRecordingServiceProxy;->access$100(Lcom/android/phone/CallRecordingServiceProxy;)Lcom/android/phone/NotificationMgr;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/phone/CallRecordingServiceProxy$1;->this$0:Lcom/android/phone/CallRecordingServiceProxy;

    # getter for: Lcom/android/phone/CallRecordingServiceProxy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/CallRecordingServiceProxy;->access$200(Lcom/android/phone/CallRecordingServiceProxy;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b040c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/phone/NotificationMgr;->updateCallRecordNotification(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
