.class Lcom/android/phone/PhoneInterfaceManager$SimAuth;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimAuth"
.end annotation


# static fields
.field private static final SIM_AUTH_COMPLETE:I = 0xc8

.field private static final SIM_AUTH_GENERAL_COMPLETE:I = 0x12c

.field private static final USIM_AUTH_COMPLETE:I = 0xc9


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResponse:Lcom/android/internal/telephony/uicc/IccIoResult;

.field private mResult:Ljava/lang/String;

.field private mSAPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v1, 0x0

    .line 2005
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1993
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mDone:Z

    .line 1994
    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mResult:Ljava/lang/String;

    .line 1995
    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mResponse:Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 2006
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mSAPhone:Lcom/android/internal/telephony/Phone;

    .line 2007
    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/PhoneInterfaceManager$SimAuth;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager$SimAuth;

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/phone/PhoneInterfaceManager$SimAuth;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager$SimAuth;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1990
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/phone/PhoneInterfaceManager$SimAuth;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager$SimAuth;
    .param p1, "x1"    # Z

    .prologue
    .line 1990
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mDone:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/PhoneInterfaceManager$SimAuth;)Lcom/android/internal/telephony/uicc/IccIoResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager$SimAuth;

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mResponse:Lcom/android/internal/telephony/uicc/IccIoResult;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/phone/PhoneInterfaceManager$SimAuth;Lcom/android/internal/telephony/uicc/IccIoResult;)Lcom/android/internal/telephony/uicc/IccIoResult;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager$SimAuth;
    .param p1, "x1"    # Lcom/android/internal/telephony/uicc/IccIoResult;

    .prologue
    .line 1990
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mResponse:Lcom/android/internal/telephony/uicc/IccIoResult;

    return-object p1
.end method


# virtual methods
.method declared-synchronized doGeneralSimAuth(IIILjava/lang/String;Ljava/lang/String;I)[B
    .locals 12
    .param p1, "sessionId"    # I
    .param p2, "mode"    # I
    .param p3, "tag"    # I
    .param p4, "strRand"    # Ljava/lang/String;
    .param p5, "strAutn"    # Ljava/lang/String;
    .param p6, "nSimId"    # I

    .prologue
    .line 2156
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_0

    .line 2158
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2159
    :catch_0
    move-exception v3

    .line 2160
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2156
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 2163
    :cond_0
    :try_start_3
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x12c

    invoke-static {v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 2173
    .local v1, "callback":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mSAPhone:Lcom/android/internal/telephony/Phone;

    check-cast v8, Lcom/android/internal/telephony/gemini/GeminiPhone;

    move/from16 v0, p6

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 2175
    .local v6, "phone":Lcom/android/internal/telephony/Phone;
    :try_start_4
    const-class v8, Lcom/android/internal/telephony/Phone;

    const-string v9, "doGeneralSimAuthentication"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2176
    .local v2, "dataConnectivityDecideSimId":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2177
    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object p4, v8, v9

    const/4 v9, 0x4

    aput-object p5, v8, v9

    const/4 v9, 0x5

    aput-object v1, v8, v9

    invoke-virtual {v2, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2194
    .end local v2    # "dataConnectivityDecideSimId":Ljava/lang/reflect/Method;
    :goto_1
    :try_start_5
    iget-boolean v8, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mDone:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v8, :cond_1

    .line 2196
    :try_start_6
    const-string v8, "PhoneInterfaceManager"

    const-string v9, "wait for done"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 2198
    :catch_1
    move-exception v3

    .line 2200
    .restart local v3    # "e":Ljava/lang/InterruptedException;
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 2179
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v3

    .line 2180
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2203
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v5, 0x0

    .line 2206
    .local v5, "len":I
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mResponse:Lcom/android/internal/telephony/uicc/IccIoResult;

    iget-object v8, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v8, :cond_2

    .line 2207
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mResponse:Lcom/android/internal/telephony/uicc/IccIoResult;

    iget-object v8, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v8, v8

    add-int/lit8 v5, v8, 0x2

    .line 2208
    new-array v7, v5, [B

    .line 2209
    .local v7, "result":[B
    iget-object v8, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mResponse:Lcom/android/internal/telephony/uicc/IccIoResult;

    iget-object v8, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mResponse:Lcom/android/internal/telephony/uicc/IccIoResult;

    iget-object v11, v11, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v11, v11

    invoke-static {v8, v9, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2213
    :goto_2
    add-int/lit8 v8, v5, -0x1

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mResponse:Lcom/android/internal/telephony/uicc/IccIoResult;

    iget v9, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 2214
    add-int/lit8 v8, v5, -0x2

    iget-object v9, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mResponse:Lcom/android/internal/telephony/uicc/IccIoResult;

    iget v9, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 2216
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v5, :cond_3

    .line 2217
    const-string v8, "PhoneInterfaceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-byte v10, v7, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2211
    .end local v4    # "i":I
    .end local v7    # "result":[B
    :cond_2
    new-array v7, v5, [B

    .restart local v7    # "result":[B
    goto :goto_2

    .line 2220
    .restart local v4    # "i":I
    :cond_3
    const-string v8, "PhoneInterfaceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    const-string v8, "PhoneInterfaceManager"

    const-string v9, "done"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2222
    monitor-exit p0

    return-object v7
.end method

.method declared-synchronized doSimAuth(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "strRand"    # Ljava/lang/String;

    .prologue
    .line 2055
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 2057
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2058
    :catch_0
    move-exception v1

    .line 2059
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2055
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2062
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2064
    .local v0, "callback":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mSAPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, p1, v0}, Lcom/android/internal/telephony/Phone;->doSimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 2065
    :goto_1
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_1

    .line 2067
    :try_start_4
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2069
    :catch_1
    move-exception v1

    .line 2071
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 2074
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mResult:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v2
.end method

.method declared-synchronized doSimAuthGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "strRand"    # Ljava/lang/String;
    .param p2, "simId"    # I

    .prologue
    .line 2105
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 2107
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2108
    :catch_0
    move-exception v1

    .line 2109
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2105
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2112
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2114
    .local v0, "callback":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mSAPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Lcom/android/internal/telephony/Phone;->doSimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 2115
    :goto_1
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_1

    .line 2117
    :try_start_4
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2119
    :catch_1
    move-exception v1

    .line 2121
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 2124
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mResult:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v2
.end method

.method declared-synchronized doUSimAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "strRand"    # Ljava/lang/String;
    .param p2, "strAutn"    # Ljava/lang/String;

    .prologue
    .line 2080
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 2082
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2083
    :catch_0
    move-exception v1

    .line 2084
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2080
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2087
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc9

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2089
    .local v0, "callback":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mSAPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, p1, p2, v0}, Lcom/android/internal/telephony/Phone;->doUSimAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2090
    :goto_1
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_1

    .line 2092
    :try_start_4
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2094
    :catch_1
    move-exception v1

    .line 2096
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 2099
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mResult:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v2
.end method

.method declared-synchronized doUSimAuthGemini(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "strRand"    # Ljava/lang/String;
    .param p2, "strAutn"    # Ljava/lang/String;
    .param p3, "simId"    # I

    .prologue
    .line 2130
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 2132
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2133
    :catch_0
    move-exception v1

    .line 2134
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2130
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2137
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc9

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2139
    .local v0, "callback":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mSAPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2, p1, p2, v0}, Lcom/android/internal/telephony/Phone;->doUSimAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2140
    :goto_1
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_1

    .line 2142
    :try_start_4
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2144
    :catch_1
    move-exception v1

    .line 2146
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 2149
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mResult:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v2
.end method

.method public run()V
    .locals 1

    .prologue
    .line 2010
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2011
    monitor-enter p0

    .line 2012
    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$SimAuth$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$SimAuth$1;-><init>(Lcom/android/phone/PhoneInterfaceManager$SimAuth;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mHandler:Landroid/os/Handler;

    .line 2048
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2049
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2050
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2051
    return-void

    .line 2049
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
