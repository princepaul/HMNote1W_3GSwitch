.class Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/PhoneInterfaceManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryAdnInfoThread"
.end annotation


# static fields
.field private static final EVENT_QUERY_PHB_ADN_INFO:I = 0x64


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mSimId:I

.field myPhone:Lcom/android/internal/telephony/Phone;

.field private recordSize:[I


# direct methods
.method public constructor <init>(ILcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "simId"    # I
    .param p2, "myP"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 895
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 886
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->mDone:Z

    .line 896
    iput p1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->mSimId:I

    .line 898
    iput-object p2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->myPhone:Lcom/android/internal/telephony/Phone;

    .line 899
    return-void
.end method

.method static synthetic access$702(Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;
    .param p1, "x1"    # Z

    .prologue
    .line 883
    iput-boolean p1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->mDone:Z

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    .prologue
    .line 883
    iget-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->recordSize:[I

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;
    .param p1, "x1"    # [I

    .prologue
    .line 883
    iput-object p1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->recordSize:[I

    return-object p1
.end method


# virtual methods
.method public GetAdnStorageInfo()[I
    .locals 5

    .prologue
    .line 949
    monitor-enter p0

    .line 950
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 952
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 954
    :catch_0
    move-exception v0

    .line 955
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 987
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 958
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 961
    .local v2, "response":Landroid/os/Message;
    const/4 v1, 0x0

    .line 963
    .local v1, "filehandle":Lcom/android/internal/telephony/uicc/IccFileHandler;
    iget-object v3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->myPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v4, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->mSimId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 969
    if-eqz v1, :cond_1

    .line 970
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getPhbRecordInfo(Landroid/os/Message;)V

    .line 976
    :goto_1
    iget-boolean v3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_2

    .line 978
    :try_start_4
    const-string v3, "PhoneInterfaceManagerEx"

    const-string v4, "wait for done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 980
    :catch_1
    move-exception v0

    .line 982
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 972
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const-string v3, "PhoneInterfaceManagerEx"

    const-string v4, "GetAdnStorageInfo: filehandle is null."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const/4 v3, 0x0

    monitor-exit p0

    .line 986
    :goto_2
    return-object v3

    .line 985
    :cond_2
    const-string v3, "PhoneInterfaceManagerEx"

    const-string v4, "done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->recordSize:[I

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public run()V
    .locals 1

    .prologue
    .line 907
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 908
    monitor-enter p0

    .line 909
    :try_start_0
    new-instance v0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread$1;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread$1;-><init>(Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;)V

    iput-object v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->mHandler:Landroid/os/Handler;

    .line 943
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 944
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 946
    return-void

    .line 944
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setSimId(I)V
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 901
    iput p1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->mSimId:I

    .line 902
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->mDone:Z

    .line 903
    return-void
.end method
