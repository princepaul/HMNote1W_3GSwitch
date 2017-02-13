.class public Lcom/mediatek/phone/volte/VoLteConfModeler;
.super Ljava/lang/Object;
.source "VoLteConfModeler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/phone/volte/VoLteConfModeler$Listener;
    }
.end annotation


# static fields
.field private static final FAKE_CALL_ID_START_VALUE:I = 0x7d0

.field private static final LOG_TAG:Ljava/lang/String; = "VoLteConfModeler"

.field private static sInstance:Lcom/mediatek/phone/volte/VoLteConfModeler;


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/phone/volte/VoLteConfModeler$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNextFakeCallId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/volte/VoLteConfModeler;->mListeners:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/phone/volte/VoLteConfModeler;->mNextFakeCallId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 88
    return-void
.end method

.method private createNewCall()Lcom/android/services/telephony/common/Call;
    .locals 3

    .prologue
    .line 170
    :cond_0
    iget-object v2, p0, Lcom/mediatek/phone/volte/VoLteConfModeler;->mNextFakeCallId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 173
    .local v0, "callId":I
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    const/16 v1, 0x7d0

    .line 179
    .local v1, "newNextCallId":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/phone/volte/VoLteConfModeler;->mNextFakeCallId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    new-instance v2, Lcom/android/services/telephony/common/Call;

    invoke-direct {v2, v0}, Lcom/android/services/telephony/common/Call;-><init>(I)V

    return-object v2

    .line 173
    .end local v1    # "newNextCallId":I
    :cond_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method public static dumpVoLTEConfMemberList(ILjava/util/List;)V
    .locals 5
    .param p0, "conferenceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/services/telephony/common/VoLteConferenceMember;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/services/telephony/common/VoLteConferenceMember;>;"
    const-string v2, "VoLteConfModeler"

    const-string v3, "------Dump VoLTE Conference Member List Begin-------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-eqz p1, :cond_0

    .line 139
    const-string v2, "VoLteConfModeler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------List size / conferenceId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;

    .line 141
    .local v1, "member":Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
    const-string v2, "VoLteConfModeler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "member":Lcom/mediatek/services/telephony/common/VoLteConferenceMember;
    :cond_0
    const-string v2, "VoLteConfModeler"

    const-string v3, "------Dump VoLTE Conference Member List End-------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method public static getConnByTelephonyCallId(I)Lcom/android/internal/telephony/Connection;
    .locals 9
    .param p0, "id"    # I

    .prologue
    .line 194
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getConnByTelephonyCallId, id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/phone/volte/VoLteConfModeler;->log(Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 196
    .local v6, "telephonyCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getRingingCalls()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 197
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getForegroundCalls()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 198
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getBackgroundCalls()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 200
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Call;

    .line 201
    .local v5, "telephonyCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 203
    .local v1, "connection":Lcom/android/internal/telephony/Connection;
    :try_start_0
    instance-of v7, v1, Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v7, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-ne v7, p0, :cond_1

    .line 212
    .end local v1    # "connection":Lcom/android/internal/telephony/Connection;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "telephonyCall":Lcom/android/internal/telephony/Call;
    :goto_1
    return-object v1

    .line 206
    .restart local v1    # "connection":Lcom/android/internal/telephony/Connection;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "telephonyCall":Lcom/android/internal/telephony/Call;
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    goto :goto_0

    .line 212
    .end local v1    # "connection":Lcom/android/internal/telephony/Connection;
    .end local v2    # "e":Lcom/android/internal/telephony/CallStateException;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "telephonyCall":Lcom/android/internal/telephony/Call;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getInstance()Lcom/mediatek/phone/volte/VoLteConfModeler;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/mediatek/phone/volte/VoLteConfModeler;->sInstance:Lcom/mediatek/phone/volte/VoLteConfModeler;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/mediatek/phone/volte/VoLteConfModeler;

    invoke-direct {v0}, Lcom/mediatek/phone/volte/VoLteConfModeler;-><init>()V

    sput-object v0, Lcom/mediatek/phone/volte/VoLteConfModeler;->sInstance:Lcom/mediatek/phone/volte/VoLteConfModeler;

    .line 94
    :cond_0
    sget-object v0, Lcom/mediatek/phone/volte/VoLteConfModeler;->sInstance:Lcom/mediatek/phone/volte/VoLteConfModeler;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 227
    const-string v0, "VoLteConfModeler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void
.end method

.method private notifyConferenceUpdate(ILjava/util/List;)V
    .locals 2
    .param p1, "conferenceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/services/telephony/common/VoLteConferenceMember;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p2, "members":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/services/telephony/common/VoLteConferenceMember;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/phone/volte/VoLteConfModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/mediatek/phone/volte/VoLteConfModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/phone/volte/VoLteConfModeler$Listener;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/phone/volte/VoLteConfModeler$Listener;->onVoLteConferenceUpdate(ILjava/util/List;)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_0
    return-void
.end method

.method public static translateConferenceStatus(Ljava/lang/String;)I
    .locals 1
    .param p0, "status"    # Ljava/lang/String;

    .prologue
    .line 216
    const-string v0, "connected"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const/16 v0, 0xc8

    .line 223
    :goto_0
    return v0

    .line 218
    :cond_0
    const-string v0, "on-hold"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    const/16 v0, 0xca

    goto :goto_0

    .line 220
    :cond_1
    const-string v0, "disconnected"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    const/16 v0, 0xc9

    goto :goto_0

    .line 223
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/mediatek/phone/volte/VoLteConfModeler$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/phone/volte/VoLteConfModeler$Listener;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mediatek/phone/volte/VoLteConfModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/mediatek/phone/volte/VoLteConfModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    return-void
.end method

.method public generateFakeCallForParticipant(Lcom/android/internal/telephony/ConferenceCallXml$User;II)Lcom/android/services/telephony/common/Call;
    .locals 2
    .param p1, "user"    # Lcom/android/internal/telephony/ConferenceCallXml$User;
    .param p2, "conferenceId"    # I
    .param p3, "callMode"    # I

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/mediatek/phone/volte/VoLteConfModeler;->createNewCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 186
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/ConferenceCallXml$User;->getEntity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/Call;->setNumber(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, p2}, Lcom/android/services/telephony/common/Call;->setConferenceId(I)V

    .line 188
    invoke-virtual {v0, p3}, Lcom/android/services/telephony/common/Call;->setIMSCallMode(I)V

    .line 189
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/Call;->setState(I)V

    .line 190
    return-object v0
.end method

.method public processConferenceCallIndication(Lcom/android/internal/telephony/ConferenceCallXml;)V
    .locals 12
    .param p1, "xmlData"    # Lcom/android/internal/telephony/ConferenceCallXml;

    .prologue
    const/4 v11, 0x2

    .line 98
    invoke-virtual {p1}, Lcom/android/internal/telephony/ConferenceCallXml;->getCallId()I

    move-result v1

    .line 99
    .local v1, "callId":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processConferenceCallIndication, xmlData call id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/phone/volte/VoLteConfModeler;->log(Ljava/lang/String;)V

    .line 100
    invoke-static {v1}, Lcom/mediatek/phone/volte/VoLteConfModeler;->getConnByTelephonyCallId(I)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 101
    .local v3, "connection":Lcom/android/internal/telephony/Connection;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 103
    .local v6, "members":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/services/telephony/common/VoLteConferenceMember;>;"
    if-eqz v3, :cond_3

    .line 104
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "find conference connection, connection = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/phone/volte/VoLteConfModeler;->log(Ljava/lang/String;)V

    move-object v9, v3

    .line 105
    check-cast v9, Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmConnection;->getRoleOfConnection()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 107
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 108
    .local v2, "conn":Lcom/android/internal/telephony/Connection;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loop in conference host connecitons, connection = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/phone/volte/VoLteConfModeler;->log(Ljava/lang/String;)V

    move-object v4, v2

    .line 109
    check-cast v4, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 110
    .local v4, "gsmConn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->getRoleOfConnection()I

    move-result v9

    if-ne v9, v11, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 112
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->getCallModeler()Lcom/android/phone/CallModeler;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/phone/CallModeler;->getVoLteConfedCall(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 114
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->getConferenceUserData()Lcom/android/internal/telephony/ConferenceCallXml$User;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/ConferenceCallXml$User;->getStatus()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/phone/volte/VoLteConfModeler;->translateConferenceStatus(Ljava/lang/String;)I

    move-result v7

    .line 116
    .local v7, "status":I
    new-instance v9, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;

    const/16 v10, 0x65

    invoke-direct {v9, v0, v1, v10, v7}, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;-><init>(Lcom/android/services/telephony/common/Call;III)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    .end local v2    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v4    # "gsmConn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "status":I
    :cond_1
    check-cast v3, Lcom/android/internal/telephony/gsm/GsmConnection;

    .end local v3    # "connection":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->getRoleOfConnection()I

    move-result v9

    if-ne v9, v11, :cond_2

    .line 122
    invoke-virtual {p1}, Lcom/android/internal/telephony/ConferenceCallXml;->getUsers()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/ConferenceCallXml$User;

    .line 123
    .local v8, "user":Lcom/android/internal/telephony/ConferenceCallXml$User;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loop in conference participant users, user entity = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/internal/telephony/ConferenceCallXml$User;->getEntity()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/phone/volte/VoLteConfModeler;->log(Ljava/lang/String;)V

    .line 124
    const/16 v9, 0x17

    invoke-virtual {p0, v8, v1, v9}, Lcom/mediatek/phone/volte/VoLteConfModeler;->generateFakeCallForParticipant(Lcom/android/internal/telephony/ConferenceCallXml$User;II)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 126
    .restart local v0    # "call":Lcom/android/services/telephony/common/Call;
    invoke-virtual {v8}, Lcom/android/internal/telephony/ConferenceCallXml$User;->getStatus()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/phone/volte/VoLteConfModeler;->translateConferenceStatus(Ljava/lang/String;)I

    move-result v7

    .line 127
    .restart local v7    # "status":I
    new-instance v9, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;

    const/16 v10, 0x66

    invoke-direct {v9, v0, v1, v10, v7}, Lcom/mediatek/services/telephony/common/VoLteConferenceMember;-><init>(Lcom/android/services/telephony/common/Call;III)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "status":I
    .end local v8    # "user":Lcom/android/internal/telephony/ConferenceCallXml$User;
    :cond_2
    invoke-static {v1, v6}, Lcom/mediatek/phone/volte/VoLteConfModeler;->dumpVoLTEConfMemberList(ILjava/util/List;)V

    .line 132
    invoke-direct {p0, v1, v6}, Lcom/mediatek/phone/volte/VoLteConfModeler;->notifyConferenceUpdate(ILjava/util/List;)V

    .line 134
    :cond_3
    return-void
.end method
