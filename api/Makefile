lint-code:
	clojure -Sdeps '{:deps {clj-kondo {:mvn/version "RELEASE"}}}' -m clj-kondo.main --lint src test

unit-tests:
	clojure -A:test -e:integration

integration-tests:
	docker-compose -p test -f docker-compose.test.yml down && \
	docker-compose -p test -f docker-compose.test.yml build && \
	docker-compose -p test -f docker-compose.test.yml up --remove-orphans --abort-on-container-exit --exit-code-from api

run-local:
	clojure -A:dev -m api.server

export-document-plan:
	curl -s -X POST http://localhost:3001/_graphql \
	     -H "Content-Type: application/json" \
	     -d "{\"query\": \"{documentPlan(id:\\\"$(id)\\\",name:\\\"$(name)\\\"){id uid name blocklyXml documentPlan}}\"}" | \
	jq -r '.data.documentPlan'
