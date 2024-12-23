<#-- template.ftl -->
<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=false displayMessage=true>
    <#if section == "title">
        커스텀 로그인 페이지
    <#elseif section == "header">
        <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <#elseif section == "message">
        <#-- 메시지 출력 -->
        <#if message?has_content>
            <div class="alert alert-${message.type}">
                <span class="message-text">${message.summary?no_esc}</span>
            </div>
        </#if>
    <#elseif section == "form">
        <div id="webcrumbs" class="flex items-center justify-center h-screen bg-gray-100">
            <div class="w-[360px] bg-white shadow rounded-lg p-6 space-y-5">
                <#-- 브랜드 로고 -->
                <div class="w-full flex items-center justify-center">
                    <img src="${url.resourcesPath}/images/cjonelogo.JPG" alt="CJ ONE 로고" class="h-12 w-auto" id="cjonelogo" />
                </div>

                <#-- 오류 메시지 표시 -->
                <#if message?has_content>
                    <div class="text-red-500 text-sm text-center">
                        ${message.summary?no_esc}
                    </div>
                </#if>

                <#-- 로그인 폼 -->
                <form id="kc-form-login" action="${url.loginAction}" method="post" class="space-y-4">
                    <input
                        type="text"
                        placeholder="CJ ONE 아이디"
                        name="username"
                        id="username"
                        class="w-full border border-neutral-300 rounded px-4 py-2 text-neutral-950 focus:outline-none"
                    />
                    <input
                        type="password"
                        placeholder="비밀번호"
                        name="password"
                        id="password"
                        class="w-full border border-neutral-300 rounded px-4 py-2 text-neutral-950 focus:outline-none"
                    />
                    <div class="flex items-center space-x-2 text-neutral-600 text-sm">
                        <input type="checkbox" id="keepLogin" class="rounded" />
                        <label for="keepLogin" class="text-neutral-600">로그인 상태 유지</label>
                    </div>
                    <button type="submit" class="w-full bg-yellow-500 text-white rounded py-2 font-medium">로그인</button>
                </form>

                <div class="text-center text-neutral-500 text-sm">또는</div>
                <button type="button" class="w-full border border-neutral-300 text-neutral-950 rounded py-2 font-medium">
                    QR코드 로그인
                </button>

                <#-- 추가 링크 -->
                <div class="flex justify-between text-neutral-500 text-sm">
                    <a href="#" class="hover:underline">회원가입</a>
                    <a href="#" class="hover:underline">계정 찾기</a>
                    <a href="#" class="hover:underline">비밀번호 찾기</a>
                </div>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>
