.class final Lcom/android/phone/PhoneUtils$4;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "ci"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 2181
    const-string v3, "query complete, updating connection.userdata"

    # invokes: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->access$400(Ljava/lang/String;)V

    move-object v0, p2

    .line 2182
    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2184
    .local v0, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    const/4 v1, 0x1

    .line 2187
    .local v1, "isSipConn":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- onQueryComplete: CallerInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->access$400(Ljava/lang/String;)V

    .line 2188
    iget-boolean v3, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v3, :cond_0

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2205
    :cond_0
    iget v3, p3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-nez v3, :cond_1

    .line 2206
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    iput v3, p3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2209
    :cond_1
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getFullDialString(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2228
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    iget-boolean v3, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v3, :cond_3

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2229
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2233
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> Stashing CallerInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " into the connection..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->access$400(Ljava/lang/String;)V

    .line 2234
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 2235
    return-void

    .line 2184
    .end local v1    # "isSipConn":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 2215
    .restart local v1    # "isSipConn":Z
    :cond_5
    const/4 v3, 0x0

    invoke-static {v3, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 2219
    .local v2, "newCi":Lcom/android/internal/telephony/CallerInfo;
    if-eqz v2, :cond_2

    .line 2220
    iget-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2221
    iget-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 2222
    move-object p3, v2

    goto :goto_1
.end method
