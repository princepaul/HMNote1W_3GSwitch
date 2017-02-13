.class public Lcom/android/internal/telephony/cat/CatResponseMessage;
.super Ljava/lang/Object;
.source "CatResponseMessage.java"


# instance fields
.field mAdditionalInfo:[B

.field mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field mDestinationId:I

.field mEvent:I

.field mIncludeAdditionalInfo:Z

.field mOneShot:Z

.field mResCode:Lcom/android/internal/telephony/cat/ResultCode;

.field mSourceId:I

.field mUsersConfirm:Z

.field mUsersInput:Ljava/lang/String;

.field mUsersMenuSelection:I

.field mUsersYesNoSelection:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 56
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 57
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    .line 58
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    .line 59
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 93
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEvent:I

    .line 94
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mSourceId:I

    .line 95
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mDestinationId:I

    .line 96
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    .line 97
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mOneShot:Z

    .line 100
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 56
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 57
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    .line 58
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    .line 59
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 93
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEvent:I

    .line 94
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mSourceId:I

    .line 95
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mDestinationId:I

    .line 96
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    .line 97
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mOneShot:Z

    .line 103
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEvent:I

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 3
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 56
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 57
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    .line 58
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    .line 59
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 93
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEvent:I

    .line 94
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mSourceId:I

    .line 95
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mDestinationId:I

    .line 96
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    .line 97
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mOneShot:Z

    .line 64
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 65
    return-void
.end method


# virtual methods
.method getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    return-object v0
.end method

.method public setAdditionalInfo([B)V
    .locals 1
    .param p1, "additionalInfo"    # [B

    .prologue
    .line 132
    if-eqz p1, :cond_0

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 135
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:[B

    .line 136
    return-void
.end method

.method public setConfirmation(Z)V
    .locals 0
    .param p1, "confirm"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    .line 85
    return-void
.end method

.method public setDestinationId(I)V
    .locals 0
    .param p1, "dId"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mDestinationId:I

    .line 124
    return-void
.end method

.method public setEventId(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEvent:I

    .line 116
    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setMenuSelection(I)V
    .locals 0
    .param p1, "selection"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    .line 73
    return-void
.end method

.method public setOneShot(Z)V
    .locals 0
    .param p1, "shot"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mOneShot:Z

    .line 144
    return-void
.end method

.method public setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 0
    .param p1, "resCode"    # Lcom/android/internal/telephony/cat/ResultCode;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 69
    return-void
.end method

.method public setSourceId(I)V
    .locals 0
    .param p1, "sId"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mSourceId:I

    .line 112
    return-void
.end method

.method public setYesNo(Z)V
    .locals 0
    .param p1, "yesNo"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    .line 81
    return-void
.end method
