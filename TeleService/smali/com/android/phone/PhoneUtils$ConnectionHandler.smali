.class Lcom/android/phone/PhoneUtils$ConnectionHandler;
.super Landroid/os/Handler;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/PhoneUtils$1;

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/android/phone/PhoneUtils$ConnectionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v13, 0x8

    .line 197
    # invokes: Lcom/android/phone/PhoneUtils;->handleMessageMtk(Landroid/os/Message;)Z
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->access$000(Landroid/os/Message;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget v11, p1, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    goto :goto_0

    .line 226
    :sswitch_0
    const-string v11, "ConnectionHandler: updating mute state for each connection"

    # invokes: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->access$400(Ljava/lang/String;)V

    .line 227
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 228
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/CallManager;

    .line 235
    .local v3, "cm":Lcom/android/internal/telephony/CallManager;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v7, "fgConnections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Call;

    .line 237
    .local v6, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    instance-of v11, v11, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v11, :cond_3

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    if-nez v11, :cond_2

    .line 238
    :cond_3
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 203
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "cm":Lcom/android/internal/telephony/CallManager;
    .end local v6    # "fgCall":Lcom/android/internal/telephony/Call;
    .end local v7    # "fgConnections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    :sswitch_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/phone/PhoneUtils$FgRingCalls;

    .line 206
    .local v8, "frC":Lcom/android/phone/PhoneUtils$FgRingCalls;
    # getter for: Lcom/android/phone/PhoneUtils$FgRingCalls;->fgCall:Lcom/android/internal/telephony/Call;
    invoke-static {v8}, Lcom/android/phone/PhoneUtils$FgRingCalls;->access$100(Lcom/android/phone/PhoneUtils$FgRingCalls;)Lcom/android/internal/telephony/Call;

    move-result-object v11

    if-eqz v11, :cond_4

    # getter for: Lcom/android/phone/PhoneUtils$FgRingCalls;->fgCall:Lcom/android/internal/telephony/Call;
    invoke-static {v8}, Lcom/android/phone/PhoneUtils$FgRingCalls;->access$100(Lcom/android/phone/PhoneUtils$FgRingCalls;)Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_4

    iget v11, p1, Landroid/os/Message;->arg1:I

    if-ge v11, v13, :cond_4

    .line 209
    # getter for: Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$200()Lcom/android/phone/PhoneUtils$ConnectionHandler;

    move-result-object v11

    const/16 v12, 0x64

    invoke-virtual {v11, v12}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 211
    .local v10, "retryMsg":Landroid/os/Message;
    iget v11, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Landroid/os/Message;->arg1:I

    .line 212
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v11, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 213
    # getter for: Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$200()Lcom/android/phone/PhoneUtils$ConnectionHandler;

    move-result-object v11

    const-wide/16 v12, 0xc8

    invoke-virtual {v11, v10, v12, v13}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 218
    .end local v10    # "retryMsg":Landroid/os/Message;
    :cond_4
    # getter for: Lcom/android/phone/PhoneUtils$FgRingCalls;->ringing:Lcom/android/internal/telephony/Call;
    invoke-static {v8}, Lcom/android/phone/PhoneUtils$FgRingCalls;->access$300(Lcom/android/phone/PhoneUtils$FgRingCalls;)Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 219
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-ne v11, v13, :cond_5

    .line 220
    const-string v11, "PhoneUtils"

    const-string v12, "DISCONNECTING time out"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_5
    # getter for: Lcom/android/phone/PhoneUtils$FgRingCalls;->ringing:Lcom/android/internal/telephony/Call;
    invoke-static {v8}, Lcom/android/phone/PhoneUtils$FgRingCalls;->access$300(Lcom/android/phone/PhoneUtils$FgRingCalls;)Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 241
    .end local v8    # "frC":Lcom/android/phone/PhoneUtils$FgRingCalls;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v3    # "cm":Lcom/android/internal/telephony/CallManager;
    .restart local v7    # "fgConnections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 242
    .local v4, "cn":Lcom/android/internal/telephony/Connection;
    # getter for: Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$500()Ljava/util/Hashtable;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_7

    .line 243
    # getter for: Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$500()Ljava/util/Hashtable;

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v11, v4, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 250
    .end local v4    # "cn":Lcom/android/internal/telephony/Connection;
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v2, "bgConnections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Call;

    .line 252
    .local v1, "bgCall":Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    instance-of v11, v11, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v11, :cond_a

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    if-nez v11, :cond_9

    .line 253
    :cond_a
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 256
    .end local v1    # "bgCall":Lcom/android/internal/telephony/Call;
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_c
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 257
    .restart local v4    # "cn":Lcom/android/internal/telephony/Connection;
    # getter for: Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$500()Ljava/util/Hashtable;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_c

    .line 258
    # getter for: Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$500()Ljava/util/Hashtable;

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v11, v4, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 266
    .end local v4    # "cn":Lcom/android/internal/telephony/Connection;
    :cond_d
    # getter for: Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$500()Ljava/util/Hashtable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 267
    .local v5, "cnlist":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :cond_e
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 268
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 269
    .restart local v4    # "cn":Lcom/android/internal/telephony/Connection;
    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 270
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "connection \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' not accounted for, removing."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->access$400(Ljava/lang/String;)V

    .line 271
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 281
    .end local v4    # "cn":Lcom/android/internal/telephony/Connection;
    :cond_f
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v11, v12, :cond_10

    .line 282
    invoke-static {}, Lcom/android/phone/PhoneUtils;->restoreMuteState()Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 284
    :cond_10
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    const/4 v12, 0x0

    # invokes: Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V
    invoke-static {v11, v12}, Lcom/android/phone/PhoneUtils;->access$600(Lcom/android/internal/telephony/Phone;Z)V

    goto/16 :goto_0

    .line 201
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method
