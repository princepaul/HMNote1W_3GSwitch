.class public Lcom/android/phone/settings/CdmaCallWaitingPreference;
.super Landroid/preference/ListPreference;
.source "CdmaCallWaitingPreference.java"


# static fields
.field private static final DISABLE_CALL_WAITING:I = 0x0

.field private static final ENABLE_CALL_WAITING:I = 0x1

.field private static final URI_DISABLE_CW:Landroid/net/Uri;

.field private static final URI_ENABLE_CW:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "tel:*74"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/CdmaCallWaitingPreference;->URI_ENABLE_CW:Landroid/net/Uri;

    .line 19
    const-string v0, "tel:*740"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/CdmaCallWaitingPreference;->URI_DISABLE_CW:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/settings/CdmaCallWaitingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v1, 0x7f0b01b6

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CdmaCallWaitingPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 28
    const v0, 0x7f060019

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CdmaCallWaitingPreference;->setEntries(I)V

    .line 29
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CdmaCallWaitingPreference;->setEntryValues(I)V

    .line 30
    invoke-virtual {p0}, Lcom/android/phone/settings/CdmaCallWaitingPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CdmaCallWaitingPreference;->setTitle(I)V

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/CdmaCallWaitingPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CdmaCallWaitingPreference;->setDialogTitle(I)V

    .line 36
    :cond_1
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 6
    .param p1, "positiveResult"    # Z

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 41
    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/phone/settings/CdmaCallWaitingPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 43
    .local v2, "value":I
    const/4 v1, 0x0

    .line 44
    .local v1, "uri":Landroid/net/Uri;
    packed-switch v2, :pswitch_data_0

    .line 52
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpexted call waiting value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/settings/CdmaCallWaitingPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 46
    :pswitch_0
    sget-object v1, Lcom/android/phone/settings/CdmaCallWaitingPreference;->URI_ENABLE_CW:Landroid/net/Uri;

    .line 55
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 57
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/phone/settings/CdmaCallWaitingPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 60
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "value":I
    :cond_0
    return-void

    .line 49
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "value":I
    :pswitch_1
    sget-object v1, Lcom/android/phone/settings/CdmaCallWaitingPreference;->URI_DISABLE_CW:Landroid/net/Uri;

    .line 50
    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
