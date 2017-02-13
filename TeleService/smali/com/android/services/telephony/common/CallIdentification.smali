.class public final Lcom/android/services/telephony/common/CallIdentification;
.super Ljava/lang/Object;
.source "CallIdentification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/services/telephony/common/CallIdentification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallId:I

.field private mCallType:I

.field private mCnapName:Ljava/lang/String;

.field private mCnapNamePresentation:I

.field private mConferenceId:I

.field private mIMSCallMode:I

.field private mIsECCCall:Z

.field private mIsIncoming:Z

.field private mIsWaiting:Z

.field private mNumber:Ljava/lang/String;

.field private mNumberPresentation:I

.field private mPAU:Ljava/lang/String;

.field private mPostDialString:Ljava/lang/String;

.field private mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lcom/android/services/telephony/common/CallIdentification$1;

    invoke-direct {v0}, Lcom/android/services/telephony/common/CallIdentification$1;-><init>()V

    sput-object v0, Lcom/android/services/telephony/common/CallIdentification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "callId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mPostDialString:Ljava/lang/String;

    .line 39
    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    .line 42
    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    .line 217
    iput v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    .line 218
    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    .line 219
    iput-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    .line 250
    iput-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsECCCall:Z

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mPAU:Ljava/lang/String;

    .line 306
    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    .line 307
    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mConferenceId:I

    .line 48
    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v1, ""

    iput-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    .line 37
    const-string v1, ""

    iput-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mPostDialString:Ljava/lang/String;

    .line 39
    sget v1, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    .line 42
    sget v1, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    .line 45
    const-string v1, ""

    iput-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    .line 217
    iput v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    .line 218
    iput v3, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    .line 219
    iput-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    .line 250
    iput-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsECCCall:Z

    .line 267
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mPAU:Ljava/lang/String;

    .line 306
    iput v3, p0, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    .line 307
    iput v3, p0, Lcom/android/services/telephony/common/CallIdentification;->mConferenceId:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mPostDialString:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    .line 162
    const/4 v1, 0x3

    new-array v0, v1, [Z

    .line 163
    .local v0, "val":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 164
    aget-boolean v1, v0, v2

    iput-boolean v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    .line 165
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsECCCall:Z

    .line 166
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsWaiting:Z

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mPAU:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mConferenceId:I

    .line 171
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/services/telephony/common/CallIdentification$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/services/telephony/common/CallIdentification$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/services/telephony/common/CallIdentification;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/services/telephony/common/CallIdentification;)V
    .locals 3
    .param p1, "identification"    # Lcom/android/services/telephony/common/CallIdentification;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mPostDialString:Ljava/lang/String;

    .line 39
    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    .line 42
    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    .line 217
    iput v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    .line 218
    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    .line 219
    iput-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    .line 250
    iput-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsECCCall:Z

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mPAU:Ljava/lang/String;

    .line 306
    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    .line 307
    iput v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mConferenceId:I

    .line 52
    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    .line 53
    iget-object v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    .line 54
    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    .line 55
    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    .line 56
    iget-object v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mPostDialString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mPostDialString:Ljava/lang/String;

    .line 59
    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    .line 60
    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    .line 61
    iget-boolean v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    iput-boolean v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    .line 65
    iget-boolean v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mIsECCCall:Z

    iput-boolean v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsECCCall:Z

    .line 69
    iget-object v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mPAU:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mPAU:Ljava/lang/String;

    .line 73
    iget-boolean v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mIsWaiting:Z

    iput-boolean v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsWaiting:Z

    .line 77
    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    .line 78
    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mConferenceId:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mConferenceId:I

    .line 80
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public getCallId()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    return v0
.end method

.method public getCallType()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    return v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    return v0
.end method

.method public getConferenceId()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mConferenceId:I

    return v0
.end method

.method public getIMSCallMode()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    return v0
.end method

.method public getPAUField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mPAU:Ljava/lang/String;

    return-object v0
.end method

.method public getPostDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mPostDialString:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotId()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    return v0
.end method

.method public isECCCall()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsECCCall:Z

    return v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    return v0
.end method

.method public isVideoCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 222
    iget v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoLteConferenceCall()Z
    .locals 2

    .prologue
    .line 318
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoLteConferenceHost()Z
    .locals 2

    .prologue
    .line 323
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWaitingCall()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsWaiting:Z

    return v0
.end method

.method public markAsECCCall()V
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsECCCall:Z

    .line 263
    return-void
.end method

.method public markAsWaitingCall(Z)V
    .locals 0
    .param p1, "isWaiting"    # Z

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsWaiting:Z

    .line 302
    return-void
.end method

.method public setCallType(I)V
    .locals 0
    .param p1, "callType"    # I

    .prologue
    .line 234
    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    .line 235
    return-void
.end method

.method public setCnapName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cnapName"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setCnapNamePresentation(I)V
    .locals 0
    .param p1, "presentation"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    .line 116
    return-void
.end method

.method public setConferenceId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 327
    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mConferenceId:I

    .line 328
    return-void
.end method

.method public setIMSCallMode(I)V
    .locals 0
    .param p1, "callMode"    # I

    .prologue
    .line 314
    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    .line 315
    return-void
.end method

.method public setIsIncomingFlag(Z)V
    .locals 0
    .param p1, "isIncoming"    # Z

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    .line 231
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setNumberPresentation(I)V
    .locals 0
    .param p1, "presentation"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    .line 108
    return-void
.end method

.method public setPAUField(Ljava/lang/String;)V
    .locals 0
    .param p1, "pau"    # Ljava/lang/String;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mPAU:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setPostDialString(Ljava/lang/String;)V
    .locals 0
    .param p1, "postDialString"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mPostDialString:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setSlotId(I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    .line 246
    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    .line 247
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 196
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCallId"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mNumber"

    iget-object v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/services/telephony/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mNumberPresentation"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCnapName"

    iget-object v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/services/telephony/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCnapNamePresentation"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mPostDialString"

    iget-object v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mSlotId"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mVideoCallFlag"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsIncoming"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsECCCall"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsECCCall:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsWaiting"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsWaiting:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mPAU"

    iget-object v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mPAU:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIMSCallMode"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mConferenceId"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mConferenceId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 132
    iget v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mPostDialString:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mSlotId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    const/4 v1, 0x3

    new-array v0, v1, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsIncoming:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsECCCall:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mIsWaiting:Z

    aput-boolean v2, v0, v1

    .line 142
    .local v0, "val":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 143
    iget-object v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mPAU:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mIMSCallMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v1, p0, Lcom/android/services/telephony/common/CallIdentification;->mConferenceId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    return-void
.end method
