.class public Lcom/mediatek/settings/CellBroadcastCheckBox;
.super Landroid/preference/CheckBoxPreference;
.source "CellBroadcastCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/CellBroadcastCheckBox$1;,
        Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;
    }
.end annotation


# static fields
.field private static final CB_SLOT1_TO_SIMID:Ljava/lang/String; = "cellbroadcast_slot1_map_soltid"

.field private static final CB_SLOT2_TO_SIMID:Ljava/lang/String; = "cellbroadcast_slot2_map_soltid"

.field private static final CB_SLOT3_TO_SIMID:Ljava/lang/String; = "cellbroadcast_slot3_map_soltid"

.field private static final CB_SLOT4_TO_SIMID:Ljava/lang/String; = "cellbroadcast_slot4_map_soltid"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/CellBroadcastCheckBox"

.field private static final MESSAGE_GET_STATE:I = 0x64

.field private static final MESSAGE_SET_STATE:I = 0x65

.field private static final mSimIds:[Ljava/lang/String;


# instance fields
.field private mHandler:Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;

.field private mLastCheckStatus:Z

.field private mListener:Lcom/android/phone/TimeConsumingPreferenceListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cellbroadcast_slot1_map_soltid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cellbroadcast_slot2_map_soltid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cellbroadcast_slot3_map_soltid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "cellbroadcast_slot4_map_soltid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mSimIds:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    new-instance v0, Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;-><init>(Lcom/mediatek/settings/CellBroadcastCheckBox;Lcom/mediatek/settings/CellBroadcastCheckBox$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mHandler:Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;

    .line 94
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 95
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/CellBroadcastCheckBox;)Lcom/android/phone/TimeConsumingPreferenceListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastCheckBox;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/CellBroadcastCheckBox;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastCheckBox;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mLastCheckStatus:Z

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/CellBroadcastCheckBox;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/CellBroadcastCheckBox;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastCheckBox;->getCBState(Z)V

    return-void
.end method

.method private getCBState(Z)V
    .locals 6
    .param p1, "reason"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x65

    const/4 v3, 0x0

    const/16 v2, 0x64

    .line 136
    if-eqz p1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mHandler:Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;

    invoke-virtual {v1, v2, v3, v2, v5}, Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 141
    .local v0, "msg":Landroid/os/Message;
    :goto_0
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mSlotId:I

    invoke-static {v1, v0, v2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->queryCellBroadcastSmsActivation(Lcom/android/internal/telephony/Phone;Landroid/os/Message;I)V

    .line 143
    if-eqz p1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/os/Message;->arg2:I

    if-ne v1, v4, :cond_0

    .line 145
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v1, p0, p1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 148
    :cond_0
    return-void

    .line 139
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mHandler:Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_0
.end method

.method private isSimChanged(I)Z
    .locals 10
    .param p1, "slotId"    # I

    .prologue
    const/4 v5, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastCheckBox;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v4

    .line 185
    .local v4, "simInfoRecord":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v4, :cond_1

    .line 186
    const-string v6, "Settings/CellBroadcastCheckBox"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isSimChanged] simInfoRecord ==null with slotId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/phone/PhoneLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    :goto_0
    return v5

    .line 190
    :cond_1
    iget-wide v0, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    .line 192
    .local v0, "currentSimId":J
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastCheckBox;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    sget-object v7, Lcom/mediatek/settings/CellBroadcastCheckBox;->mSimIds:[Ljava/lang/String;

    aget-object v7, v7, p1

    const-wide/16 v8, -0x1

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 193
    .local v2, "originalSimId":J
    const-string v6, "Settings/CellBroadcastCheckBox"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentSimId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " originalSimId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private saveSimIdBySlot(I)V
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastCheckBox;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v3

    .line 166
    .local v3, "simInfoRecord":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v3, :cond_1

    .line 167
    const-string v4, "Settings/CellBroadcastCheckBox"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[saveSimIdBySlot] simInfoRecord ==null with slotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-wide v1, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    .line 171
    .local v1, "simId":J
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastCheckBox;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 172
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 173
    sget-object v4, Lcom/mediatek/settings/CellBroadcastCheckBox;->mSimIds:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private setCBState(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/16 v4, 0x65

    const/4 v3, 0x0

    .line 152
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mHandler:Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v3, v4, v2}, Lcom/mediatek/settings/CellBroadcastCheckBox$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 153
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mSlotId:I

    invoke-static {v1, p1, v0, v2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->activateCellBroadcastSms(Lcom/android/internal/telephony/Phone;ILandroid/os/Message;I)V

    .line 155
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v1, p0, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 158
    :cond_0
    return-void
.end method


# virtual methods
.method init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V
    .locals 5
    .param p1, "listener"    # Lcom/android/phone/TimeConsumingPreferenceListener;
    .param p2, "skipReading"    # Z
    .param p3, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    .line 107
    const-string v1, "Settings/CellBroadcastCheckBox"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init, slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 109
    iput p3, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mSlotId:I

    .line 111
    if-nez p2, :cond_0

    .line 113
    iget v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mSlotId:I

    invoke-static {v1}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->hasIccCard(I)Z

    move-result v0

    .line 114
    .local v0, "hasIccCard":Z
    const-string v1, "Settings/CellBroadcastCheckBox"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasIccCard = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    if-eqz v0, :cond_2

    .line 119
    invoke-direct {p0, p3}, Lcom/mediatek/settings/CellBroadcastCheckBox;->isSimChanged(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {p0, v4}, Lcom/mediatek/settings/CellBroadcastCheckBox;->setChecked(Z)V

    .line 121
    invoke-direct {p0, p3}, Lcom/mediatek/settings/CellBroadcastCheckBox;->saveSimIdBySlot(I)V

    .line 132
    .end local v0    # "hasIccCard":Z
    :cond_0
    :goto_0
    return-void

    .line 124
    .restart local v0    # "hasIccCard":Z
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/settings/CellBroadcastCheckBox;->getCBState(Z)V

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p0, v4}, Lcom/mediatek/settings/CellBroadcastCheckBox;->setChecked(Z)V

    .line 129
    invoke-virtual {p0, v4}, Lcom/mediatek/settings/CellBroadcastCheckBox;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onClick()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 99
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    .line 100
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastCheckBox;->isChecked()Z

    move-result v0

    .line 101
    .local v0, "state":Z
    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/settings/CellBroadcastCheckBox;->mLastCheckStatus:Z

    .line 102
    if-eqz v0, :cond_1

    move v1, v3

    :goto_1
    invoke-direct {p0, v1}, Lcom/mediatek/settings/CellBroadcastCheckBox;->setCBState(I)V

    .line 103
    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {p0, v2}, Lcom/mediatek/settings/CellBroadcastCheckBox;->setChecked(Z)V

    .line 104
    return-void

    :cond_0
    move v1, v3

    .line 101
    goto :goto_0

    :cond_1
    move v1, v2

    .line 102
    goto :goto_1

    :cond_2
    move v2, v3

    .line 103
    goto :goto_2
.end method
