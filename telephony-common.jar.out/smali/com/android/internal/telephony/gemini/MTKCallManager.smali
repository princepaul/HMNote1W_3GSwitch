.class public Lcom/android/internal/telephony/gemini/MTKCallManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aD:Lcom/android/internal/telephony/gemini/MTKCallManager;


# instance fields
.field U:Lcom/android/internal/telephony/Phone;

.field aE:Lcom/android/internal/telephony/CallManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/gemini/MTKCallManager;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gemini/MTKCallManager;->aD:Lcom/android/internal/telephony/gemini/MTKCallManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->aE:Lcom/android/internal/telephony/CallManager;

    .line 89
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/gemini/MTKCallManager;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKCallManager;->aD:Lcom/android/internal/telephony/gemini/MTKCallManager;

    return-object v0
.end method


# virtual methods
.method public getDefaultPhoneGemini()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->U:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public registerPhoneGemini(Lcom/android/internal/telephony/Phone;)V
    .locals 3

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->U:Lcom/android/internal/telephony/Phone;

    .line 117
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_0

    move-object v0, p1

    .line 118
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    add-int/lit8 v2, v1, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 119
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->aE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 117
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->aE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 127
    return-void
.end method

.method public unregisterPhoneGemini(Lcom/android/internal/telephony/Phone;)V
    .locals 3

    .prologue
    .line 136
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_0

    move-object v0, p1

    .line 137
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    add-int/lit8 v2, v1, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 138
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->aE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 136
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/MTKCallManager;->aE:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 146
    return-void
.end method
