.class public Lcom/mediatek/phone/volte/VoLteConfUtils;
.super Ljava/lang/Object;
.source "VoLteConfUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VoLteConfUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addConferenceMember(ILjava/lang/String;)V
    .locals 8
    .param p0, "conferenceId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 147
    const-string v7, "addConferenceMember"

    invoke-static {v7}, Lcom/mediatek/phone/volte/VoLteConfUtils;->log(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v2

    .line 149
    .local v2, "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    const/4 v6, 0x0

    .line 151
    .local v6, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 152
    .local v1, "connection":Lcom/android/internal/telephony/Connection;
    instance-of v7, v1, Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v7, :cond_0

    .line 153
    const/4 v5, -0x1

    .line 155
    .local v5, "index":I
    :try_start_0
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 159
    :goto_0
    if-ne v5, p0, :cond_0

    .line 160
    const-string v7, "find the right connection~~"

    invoke-static {v7}, Lcom/mediatek/phone/volte/VoLteConfUtils;->log(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 166
    .end local v1    # "connection":Lcom/android/internal/telephony/Connection;
    .end local v5    # "index":I
    :cond_1
    if-eqz v6, :cond_2

    .line 167
    invoke-static {v6, p1}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->addConferenceMember(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    .line 169
    :cond_2
    return-void

    .line 156
    .restart local v1    # "connection":Lcom/android/internal/telephony/Connection;
    .restart local v5    # "index":I
    :catch_0
    move-exception v3

    .line 157
    .local v3, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v7, "exception when getGSMIndex!!!!!!"

    invoke-static {v7}, Lcom/mediatek/phone/volte/VoLteConfUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getConferenceConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/gsm/GsmConnection;
    .locals 8
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 59
    .local v2, "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v4, 0x0

    .line 60
    .local v4, "result":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 61
    .local v1, "connection":Lcom/android/internal/telephony/Connection;
    instance-of v6, v1, Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v6, :cond_0

    move-object v0, v1

    .line 62
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 63
    .local v0, "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getRoleOfConnection()I

    move-result v5

    .line 64
    .local v5, "role":I
    invoke-static {p0}, Lcom/mediatek/phone/volte/VoLteConfUtils;->isConferenceHost(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 65
    const/4 v6, 0x1

    if-ne v6, v5, :cond_0

    .line 66
    move-object v4, v0

    .line 75
    .end local v0    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v1    # "connection":Lcom/android/internal/telephony/Connection;
    .end local v5    # "role":I
    :cond_1
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getConferenceConnection, result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/phone/volte/VoLteConfUtils;->log(Ljava/lang/String;)V

    .line 76
    return-object v4

    .line 69
    .restart local v0    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .restart local v1    # "connection":Lcom/android/internal/telephony/Connection;
    .restart local v5    # "role":I
    :cond_2
    const/4 v6, 0x2

    if-ne v6, v5, :cond_0

    .line 70
    move-object v4, v0

    .line 71
    goto :goto_0
.end method

.method public static getIMSCallMode(Lcom/android/internal/telephony/Connection;)I
    .locals 1
    .param p0, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 22
    const/4 v0, -0x1

    .line 38
    .local v0, "callMode":I
    return v0
.end method

.method public static getIMSConferenceId(Lcom/android/internal/telephony/Connection;)I
    .locals 1
    .param p0, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 42
    const/4 v0, -0x1

    .line 54
    .local v0, "conferenceId":I
    return v0
.end method

.method public static isConferenceHost(Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConferenceHost, call = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/volte/VoLteConfUtils;->log(Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    .line 90
    .local v0, "isHost":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is Host = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/volte/VoLteConfUtils;->log(Ljava/lang/String;)V

    .line 91
    return v0
.end method

.method public static isVoLteConfCall(Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVoLteConfCall, call = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/volte/VoLteConfUtils;->log(Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    .line 142
    .local v0, "isConference":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is conference = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/volte/VoLteConfUtils;->log(Ljava/lang/String;)V

    .line 143
    return v0
.end method

.method public static isVoLteConfCall(Lcom/android/internal/telephony/Connection;)Z
    .locals 1
    .param p0, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/volte/VoLteConfUtils;->isVoLteConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method public static isVoLteConfMainConnection(Lcom/android/internal/telephony/Connection;)Z
    .locals 2
    .param p0, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/volte/VoLteConfUtils;->getConferenceConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/gsm/GsmConnection;

    move-result-object v0

    .line 96
    .local v0, "conn":Lcom/android/internal/telephony/Connection;
    if-eqz p0, :cond_0

    if-ne v0, p0, :cond_0

    .line 97
    const/4 v1, 0x1

    .line 99
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string v0, "VoLteConfUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method
